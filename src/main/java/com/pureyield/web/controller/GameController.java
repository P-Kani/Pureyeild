package com.pureyield.web.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

import com.pureyield.web.model.Player;

@WebServlet("/play")
public class GameController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        Player player = (Player) session.getAttribute("player");

        if (player == null) {
            player = new Player("Guest");
            session.setAttribute("player", player);
        }

        request.setAttribute("player", player);

        request.getRequestDispatcher("/views/play.jsp")
               .forward(request, response);
    }
}
