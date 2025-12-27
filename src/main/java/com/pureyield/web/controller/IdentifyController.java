package com.pureyield.web.controller;

import com.pureyield.web.model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
@WebServlet("/identify")
public class IdentifyController extends HttpServlet {

    // QUESTION DATA (simple version)
    private static final String[] QUESTIONS = {
        "Is this tomato Organic or GMO?",
        "Is this carrot Organic or GMO?",
        "Is this brinjal Organic or GMO?"
    };

    private static final String[] IMAGES = {
        "tomato.jpg",
        "carrot.jpg",
        "brinjal.jpg"
    };

    private static final String[] ANSWERS = {
        "Organic",
        "GMO",
        "Organic"
    };

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        if (player == null) {
            response.sendRedirect(request.getContextPath() + "/play");
            return;
        }

        int index = player.getCurrentQuestion();

        if (index >= QUESTIONS.length) {
            response.sendRedirect(request.getContextPath() + "/play");
            return;
        }

        request.setAttribute("question", QUESTIONS[index]);
        request.setAttribute("image", IMAGES[index]);
        request.setAttribute("index", index + 1);
        request.setAttribute("total", QUESTIONS.length);
        request.setAttribute("player", player);

        request.getRequestDispatcher("/views/identify.jsp")
               .forward(request, response);
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

        int index = player.getCurrentQuestion();
        String userAnswer = request.getParameter("answer");

        if (index < ANSWERS.length &&
            ANSWERS[index].equalsIgnoreCase(userAnswer)) {
            player.setScore(player.getScore() + 10);
        }

        // ✅ update progress ONLY here
        player.incrementQuestion();

        response.sendRedirect(request.getContextPath() + "/identify");
    }
}
