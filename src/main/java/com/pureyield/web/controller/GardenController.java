package com.pureyield.web.controller;

import com.pureyield.web.model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/garden")
public class GardenController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        if (player == null) {
            response.sendRedirect(request.getContextPath() + "/play");
            return;
        }

        request.setAttribute("player", player);
        request.getRequestDispatcher("/views/garden.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        if (player == null) {
            response.sendRedirect(request.getContextPath() + "/play");
            return;
        }

        String result = request.getParameter("result");

        if ("correct".equals(result)) {
            player.setScore(player.getScore() + 10);
            player.setPlantsGrown(player.getPlantsGrown() + 1);
        }

        session.setAttribute("player", player);
        response.sendRedirect(request.getContextPath() + "/garden");
    }
}
