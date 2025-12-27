package com.pureyield.web.controller;

import com.pureyield.web.model.Player;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/plant")
public class PlantController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        if (player != null) {
            player.setScore(player.getScore() + 10);
            player.setCompletion(player.getCompletion() + 10);
        }

        response.setStatus(200);
    }
}
