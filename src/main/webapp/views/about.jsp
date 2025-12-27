<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>About PureYield | Purpose-Driven Learning</title>

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

<main class="page-container">

    <!-- ================= PAGE INTRO ================= -->
    <section>
        <h1 class="text-reveal">About PureYield</h1>
        <p class="muted-text" style="max-width:720px;">
            Building food awareness and sustainability through meaningful,
            engaging digital experiences.
        </p>
    </section>

    <!-- ================= STORY ================= -->
    <section class="card animate" style="margin-top:50px;">
        <h2 class="text-reveal">Why PureYield Was Created</h2>

        <p>
            Food confusion is everywhere. Labels are misunderstood.
            The difference between Organic and GMO foods is rarely explained
            in a way people truly understand.
        </p>

        <p>
            Sustainability education often feels distant, technical,
            or boring — especially at the grassroots level.
        </p>

        <p>
            PureYield was created to change that.
            Learning about food should feel natural, engaging,
            and connected to everyday life.
        </p>

        <blockquote style="margin-top:20px;font-style:italic;color:var(--text-muted);">
            “When learning feels like play, awareness turns into habit.”
        </blockquote>
    </section>

    <!-- ================= PROBLEM STATEMENT ================= -->
    <section style="margin-top:60px;">
        <h2 class="text-reveal">The Problem We Address</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:24px;margin-top:24px;">

            <div class="card animate">
                <h3>❓ Food Literacy Gap</h3>
                <p>
                    Many people lack basic understanding of food sources,
                    labels, and production methods.
                </p>
            </div>

            <div class="card animate">
                <h3>⚠️ GMO Misconceptions</h3>
                <p>
                    GMOs are often misunderstood due to lack of clear,
                    unbiased education.
                </p>
            </div>

            <div class="card animate">
                <h3>📉 Passive Sustainability</h3>
                <p>
                    Awareness exists, but engagement and action are missing.
                </p>
            </div>

        </div>
    </section>

    <!-- ================= SOLUTION ================= -->
    <section style="margin-top:70px;">
        <h2>Our Solution</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(260px,1fr));gap:24px;margin-top:24px;">

            <div class="card animate">
                <h3 class="text-reveal">🎮 Gamified Learning</h3>
                <p>
                    Interactive games that teach Organic vs GMO
                    concepts naturally through play.
                </p>
            </div>

            <div class="card animate">
                <h3>🌱 Learning by Doing</h3>
                <p>
                    Virtual gardening encourages sustainable thinking
                    and responsible food habits.
                </p>
            </div>

            <div class="card animate">
                <h3>🌍 Real-World Impact</h3>
                <p>
                    Digital learning that translates into conscious,
                    real-life food choices.
                </p>
            </div>

        </div>
    </section>

    <!-- ================= VISION & MISSION ================= -->
    <section class="card animate" style="margin-top:80px;">
        <h2 class="text-reveal">Vision & Mission</h2>

        <h3>Our Vision</h3>
        <p>
            To empower individuals to make informed food choices
            and adopt sustainable practices through engaging digital experiences.
        </p>

        <h3 style="margin-top:24px;">Our Mission</h3>
        <ul>
            <li>Educate users on Organic vs GMO foods</li>
            <li>Promote sustainability through virtual gardening</li>
            <li>Make learning interactive and accessible</li>
            <li>Build a conscious, food-aware community</li>
        </ul>
    </section>

    <!-- ================= HOW IT WORKS ================= -->
    <section style="margin-top:80px;">
        <h2 class="text-reveal">How PureYield Works</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:24px;margin-top:24px;">

            <div class="card animate">
                <h3>1️⃣ Join</h3>
                <p>User registers and logs in</p>
            </div>

            <div class="card animate">
                <h3>2️⃣ Play</h3>
                <p>Interactive learning games</p>
            </div>

            <div class="card animate">
                <h3>3️⃣ Grow</h3>
                <p>Virtual gardening & sustainability tips</p>
            </div>

            <div class="card animate">
                <h3>4️⃣ Apply</h3>
                <p>Real-world informed food decisions</p>
            </div>

        </div>
    </section>

    <!-- ================= FUTURE SCOPE ================= -->
    <section class="card animate" style="margin-top:80px;">
        <h2 class="text-reveal">Impact & Future Scope</h2>

        <ul>
            <li>School-level adoption and curriculum integration</li>
            <li>Regional language support</li>
            <li>Advanced gardening simulations</li>
            <li>Community challenges and collaborations</li>
        </ul>
    </section>

    <!-- ================= CTA ================= -->
    <section class="card animate" style="margin-top:80px;text-align:center;">
        <h2 class="text-reveal">Experience PureYield in Action</h2>
        <p class="muted-text">
            Start learning, playing, and growing today.
        </p>

        <div style="margin-top:20px;">
            <a class="btn-primary"
               href="${pageContext.request.contextPath}/views/play.jsp">
                Play Now
            </a>
        </div>
    </section>

</main>

<footer style="margin-top:80px;text-align:center;padding:20px;">
    🌱 PureYield — Designed for learning, built for impact.
</footer>
<script src="<%= request.getContextPath() %>/assets/js/scroll.js"></script>

</body>
</html>
