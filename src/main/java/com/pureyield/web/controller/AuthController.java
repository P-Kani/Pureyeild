package com.pureyield.web.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/auth")

public class AuthController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");

        // Simple username extraction (before DB)
        String playerName = email.split("@")[0];

        HttpSession session = request.getSession();
        session.setAttribute("playerName", playerName);

        response.sendRedirect(request.getContextPath() + "/play");
    }
}
