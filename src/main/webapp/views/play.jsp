<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Play & Learn | PureYield</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

    <!-- Global CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/global.css">
</head>

<body>


<!-- ================= NAVBAR ================= -->
<header class="navbar">
    <div class="logo">🌱 PureYield</div>
    <ul>
        <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/views/about.jsp">About</a></li>
        <li><a href="${pageContext.request.contextPath}/play">Play</a></li>
        <li><a href="${pageContext.request.contextPath}/views/garden.jsp">Garden</a></li>
        <li><a href="${pageContext.request.contextPath}/views/leaderboard.jsp">Leaderboard</a></li>
        <li>
            <a class="btn-primary" href="${pageContext.request.contextPath}/play">
                Start Playing
            </a>
        </li>
    </ul>
</header>

<main class="page-container">

    <!-- ================= PAGE HEADER ================= -->
    <section>
        <h1>Play & Learn</h1>
        <p class="muted-text">
            Learning Organic vs GMO through interactive gameplay.
        </p>
    </section>

    <!-- ================= PLAYER SNAPSHOT ================= -->
    <section class="card" style="margin-top:40px;display:flex;justify-content:space-between;flex-wrap:wrap;gap:20px;">
        <div>
            <h3>👤 Player</h3>
            <p><strong>Name:</strong> ${player.name}</p>
            <p><strong>Level:</strong> ${player.level}</p>
        </div>

        <div>
            <h3>⭐ Progress</h3>
            <p><strong>Total Score:</strong> ${player.score}</p>
            <p><strong>Completion:</strong> ${player.completion}%</p>
        </div>
    </section>

    <!-- ================= GAME MODES ================= -->
    <section style="margin-top:60px;">
        <h2>Game Modes</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:24px;margin-top:24px;">

            <!-- Identify Mode -->
            <div class="card animate">
                <h3>🧐 Identify Mode</h3>
                <p>Identify Organic vs GMO produce based on visual cues and labels.</p>
                <p><strong>Learning:</strong> Recognition Skills</p>
                <p><strong>Difficulty:</strong> Beginner</p>
<a class="btn-primary"
   href="${pageContext.request.contextPath}/identify">
    Start Mode
</a>

            </div>

            <!-- Sorting Challenge -->
            <div class="card animate">
                <h3>🧩 Sorting Challenge</h3>
                <p>Drag and drop crops into correct categories.</p>
                <p><strong>Learning:</strong> Decision Making</p>
                <p><strong>Difficulty:</strong> Intermediate</p>

                <a class="btn-primary" href="${pageContext.request.contextPath}/sort">
                    Start Mode
                </a>
            </div>

            <!-- Virtual Gardening -->
            <div class="card animate">
                <h3>🌱 Virtual Gardening</h3>
                <p>Grow crops digitally while learning sustainable farming practices.</p>
                <p><strong>Learning:</strong> Sustainability Awareness</p>
                <p><strong>Difficulty:</strong> Exploratory</p>

                <a class="btn-primary" href="${pageContext.request.contextPath}/views/garden.jsp">
                    Enter Garden
                </a>
            </div>

        </div>
    </section>

    <!-- ================= LEVEL STRUCTURE ================= -->
    <section style="margin-top:80px;">
        <h2>Level Progression</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:20px;margin-top:24px;">

            <div class="card">
                <h3>Level 1</h3>
                <p>Basic identification</p>
                <p>Status: 🔓 Unlocked</p>
            </div>

            <div class="card">
                <h3>Level 2</h3>
                <p>Mixed produce challenges</p>
                <p>Status: 🔒 Locked</p>
            </div>

            <div class="card">
                <h3>Level 3</h3>
                <p>Advanced decision making</p>
                <p>Status: 🔒 Locked</p>
            </div>

        </div>
    </section>

    <!-- ================= QUICK ACTIONS ================= -->
    <section class="card animate" style="margin-top:80px;">
        <h2>Quick Actions</h2>

        <div style="display:flex;gap:20px;flex-wrap:wrap;">
            <a class="btn-primary" href="${pageContext.request.contextPath}/play">Continue Playing</a>
            <a class="btn-primary" href="${pageContext.request.contextPath}/views/leaderboard.jsp">View Leaderboard</a>
            <a class="btn-primary" href="${pageContext.request.contextPath}/views/garden.jsp">Go to Garden</a>
        </div>
    </section>

</main>

<footer style="margin-top:80px;text-align:center;padding:20px;">
    🌱 Learn • Play • Grow with PureYield
</footer>

<script src="<%= request.getContextPath() %>/assets/js/scroll.js"></script>
</body>
</html>
