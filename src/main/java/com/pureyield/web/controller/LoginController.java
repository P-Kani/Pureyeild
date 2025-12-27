package com.pureyield.web.controller;

import com.pureyield.web.model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("name"); // or name field

        HttpSession session = request.getSession();

        Player player = new Player(username);
        session.setAttribute("player", player);

        response.sendRedirect(request.getContextPath() + "/play");
    }
}
