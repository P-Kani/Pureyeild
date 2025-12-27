<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>PureYield | Play Your Way to Smarter Food Choices</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

    <!-- Global CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/global.css">
</head>

<body>

<!-- ================= NAVBAR ================= -->
<header class="navbar">
    <div class="logo">🌱 PureYield</div>
    <ul>
        <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/views/about.jsp">About</a></li>
        <a href="${pageContext.request.contextPath}/play">Play</a>
        <li><a href="${pageContext.request.contextPath}/views/garden.jsp">Garden</a></li>
        <li><a href="${pageContext.request.contextPath}/views/leaderboard.jsp">Leaderboard</a></li>
        <li>
            <a class="btn-primary"
   href="${pageContext.request.contextPath}/play">
    Start Playing
</a>

        </li>
    </ul>
</header>

<!-- ================= HERO SECTION ================= -->
<main class="page-container">

    <section class="card animate" style="text-align:center;">
        <h1 class="text-reveal">Play your way to smarter food choices</h1>
        <p class="muted-text" style="max-width:700px;margin:auto;">
            Learn the difference between Organic and GMO foods through
            engaging games, virtual gardening, and real-world sustainability tips.
        </p>

        <div style="margin-top:30px;">
            <a class="btn-primary"
               href="${pageContext.request.contextPath}/views/play.jsp">
                Start Playing
            </a>
            &nbsp;&nbsp;
            <a class="btn-secondary"
               href="${pageContext.request.contextPath}/views/about.jsp">
                Learn More
            </a>
        </div>
    </section>

    <!-- ================= ABOUT SNAPSHOT ================= -->
    <section style="margin-top:60px;">
        <h2 style="text-align:center;">Why PureYield?</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:24px;margin-top:30px;">

            <div class="card animate">
                <h3 class="text-reveal">🌍 The Problem</h3>
                <p>
                    Food labels are confusing. Organic vs GMO is misunderstood,
                    and sustainability education is often boring or inaccessible.
                </p>
            </div>

            <div class="card animate">
                <h3 class="text-reveal">🎮 The Solution</h3>
                <p>
                    PureYield uses gamified learning to help users
                    understand food choices through play, not lectures.
                </p>
            </div>

            <div class="card animate">
                <h3 class="text-reveal">🌱 The Impact</h3>
                <p>
                    Informed decisions, sustainable habits, and a community
                    that grows smarter together.
                </p>
            </div>

        </div>
    </section>

    <!-- ================= PLAY MODES ================= -->
    <section style="margin-top:70px;">
        <h2 style="text-align:center;">Play Modes</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:24px;margin-top:30px;">

            <div class="card animate">
                <h3 class="text-reveal">🔍 Identify Mode</h3>
                <p>Recognize Organic vs GMO produce through visual challenges.</p>
            </div>

            <div class="card animate">
                <h3 class="text-reveal">🧩 Sorting Challenge</h3>
                <p>Drag & drop crops into correct categories and learn by doing.</p>
            </div>

            <div class="card animate">
                <h3 class="text-reveal">🌾 Virtual Gardening</h3>
                <p>Grow crops digitally while learning real sustainability practices.</p>
            </div>

        </div>
    </section>

    <!-- ================= FINAL CTA ================= -->
    <section class="card animate" style="margin-top:80px;text-align:center;">
        <h2 class="text-reveal">Ready to grow beyond the game?</h2>
        <p class="muted-text">
            Join PureYield and start building conscious food habits today.
        </p>

        <div style="margin-top:24px;">
            <a class="btn-primary"
               href="${pageContext.request.contextPath}/views/login.jsp">
                Join PureYield
            </a>
        </div>
    </section>

</main>

<!-- ================= FOOTER ================= -->
<footer style="margin-top:80px;text-align:center;padding:20px;">
    🌱 PureYield — Grow smart. Eat clean. Live sustainable.
</footer>
<script src="<%= request.getContextPath() %>/assets/js/scroll.js"></script>

</body>
</html>
