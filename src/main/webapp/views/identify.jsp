<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Identify Mode | PureYield</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/global.css">
</head>

<body>

<header class="navbar">
    <div class="logo">🌱 PureYield</div>
    <a href="${pageContext.request.contextPath}/play">Back to Play</a>
</header>

<main class="page-container">

    <!-- PLAYER INFO -->
    <div class="card" style="text-align:center;">
        <h2>👤 Player</h2>
        <p><strong>Name:</strong> ${player.name}</p>
        <p><strong>Score:</strong> ${player.score}</p>
    </div>

    <!-- QUESTION CARD -->
    <div class="card animate" style="margin-top:40px;text-align:center;">
        <h2>${question}</h2>
        <p>Question ${index} of ${total}</p>

        <img src="${pageContext.request.contextPath}/assets/images/${image}"
             alt="Question Image"
             style="width:220px;margin:20px 0;border-radius:16px;">

        <form method="post"
              action="${pageContext.request.contextPath}/identify"
              style="display:flex;justify-content:center;gap:20px;">
            <button class="btn-primary" name="answer" value="Organic">Organic</button>
            <button class="btn-secondary" name="answer" value="GMO">GMO</button>
        </form>
    </div>

</main>

<script src="<%= request.getContextPath() %>/assets/js/scroll.js"></script>
</body>
</html>
