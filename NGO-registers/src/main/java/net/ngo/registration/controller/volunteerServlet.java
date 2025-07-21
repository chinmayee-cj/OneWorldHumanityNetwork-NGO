package net.ngo.registration.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ngo.registration.dao.volunteerDao;
import net.ngo.registration.model.volunteer;

/**
 * Servlet to handle volunteer registration.
 */
@WebServlet("/register")
public class volunteerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private volunteerDao volunteerDao;

    @Override
    public void init() {
        volunteerDao = new volunteerDao();
    }

    // Handles GET requests to /register, displays the registration form JSP page
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/volunteerregister.jsp");
        dispatcher.forward(request, response);
    }

    // Handles POST requests to /register, processes the submitted form
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName  = request.getParameter("lastName");
        String username  = request.getParameter("username");
        String email     = request.getParameter("email");         // <-- Include email
        String password  = request.getParameter("password");
        String address   = request.getParameter("address");
        String contact   = request.getParameter("contact");

        volunteer volunteer = new volunteer();
        volunteer.setFirstName(firstName);
        volunteer.setLastName(lastName);
        volunteer.setUserName(username);
        volunteer.setEmail(email);        // <-- Make sure this is set
        volunteer.setPassword(password);
        volunteer.setAddress(address);
        volunteer.setContact(contact);

        try {
            volunteerDao.registerVolunteer(volunteer);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Forward to login page after registration
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
        dispatcher.forward(request, response);
    }
}
/*
 * © 2025 Chinmayee C J. All rights reserved.
 * Unauthorized copying, distribution, or modification of this file is strictly prohibited.
 */
