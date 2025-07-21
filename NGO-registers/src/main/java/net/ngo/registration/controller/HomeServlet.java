package net.ngo.registration.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import net.ngo.registration.dao.volunteerDao;
import net.ngo.registration.model.ConnectionEntry;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private volunteerDao dao;

    @Override
    public void init() {
        dao = new volunteerDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // ✅ Check if the user is logged in
        HttpSession session = request.getSession(false); // never create a new session here
        if (session == null || session.getAttribute("username") == null) {
            // User is not logged in—redirect to login
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        // ✅ User is logged in, load connections list
        try {
            List<ConnectionEntry> connections = dao.getAllConnections();
            request.setAttribute("connections", connections);
        } catch (Exception e) {
            request.setAttribute("connections", null); // fallback in case of DB error
        }

        // ✅ Forward to view
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/home.jsp");
        dispatcher.forward(request, response);
    }
}
/*
 * © 2025 Chinmayee C J. All rights reserved.
 * Unauthorized copying, distribution, or modification of this file is strictly prohibited.
 */
