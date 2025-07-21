package net.ngo.registration.controller;

import java.io.IOException;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import net.ngo.registration.util.EmailUtil;
import net.ngo.registration.dao.volunteerDao;
import net.ngo.registration.model.ConnectionEntry;

@WebServlet("/connect")
public class ConnectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private volunteerDao dao;

    @Override
    public void init() {
        dao = new volunteerDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ Step 1: Check session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String username = (String) session.getAttribute("username");
        String review = request.getParameter("review");

        try {
            // ✅ Step 2: Save review
            dao.insertConnection(username, review);

            // ✅ Step 3: Send email
            String userEmail = dao.getEmailByUsername(username);
            if (userEmail != null && !userEmail.isEmpty()) {
                try {
                    EmailUtil.sendEmail(userEmail, review);
                } catch (MessagingException e) {
                    e.printStackTrace(); // Log but continue
                }
            }

            // ✅ Step 4: Fetch updated connections
            List<ConnectionEntry> connections = dao.getAllConnections();
            request.setAttribute("connections", connections);

            // ✅ Step 5: Forward to home.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/home.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            throw new ServletException("Database problem: " + e.getMessage(), e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ Session check
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        try {
            // Fetch all connection entries
            List<ConnectionEntry> connections = dao.getAllConnections();
            request.setAttribute("connections", connections);

            // Forward to home.jsp
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/home.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            throw new ServletException("Database problem: " + e.getMessage(), e);
        }
    }
}
/*
 * © 2025 Chinmayee C J. All rights reserved.
 * Unauthorized copying, distribution, or modification of this file is strictly prohibited.
 */
