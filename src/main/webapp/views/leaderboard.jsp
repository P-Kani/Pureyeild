<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Leaderboard | PureYield</title>

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
    </ul>
</header>

<main class="page-container">

    <!-- ================= PAGE HEADER ================= -->
    <section>
        <h1>Leaderboard</h1>
        <p class="muted-text">
            Learn, play, and grow — together.
        </p>
    </section>

    <!-- ================= SCOPE SELECTOR ================= -->
    <section class="card animate" style="margin-top:40px;display:flex;gap:16px;flex-wrap:wrap;">
        <strong>View:</strong>
        <span>Overall</span>
        <span>This Week</span>
        <span>This Month</span>
        <span>By Game Mode</span>
    </section>

    <!-- ================= TOP PERFORMERS ================= -->
    <section style="margin-top:60px;">
        <h2>Top Performers</h2>

        <div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:24px;margin-top:24px;">

            <div class="card animate">
                <h3>🥇 1st Place</h3>
                <p><strong>User:</strong> GreenMaster</p>
                <p><strong>Score:</strong> 1250</p>
                <p><strong>Achievement:</strong> Sustainability Advocate</p>
            </div>

            <div class="card animate">
                <h3>🥈 2nd Place</h3>
                <p><strong>User:</strong> CropChampion</p>
                <p><strong>Score:</strong> 1100</p>
                <p><strong>Achievement:</strong> Sorting Master</p>
            </div>

            <div class="card animate">
                <h3>🥉 3rd Place</h3>
                <p><strong>User:</strong> EcoLearner</p>
                <p><strong>Score:</strong> 980</p>
                <p><strong>Achievement:</strong> Knowledge Champion</p>
            </div>

        </div>
    </section>

    <!-- ================= FULL LEADERBOARD ================= -->
    <section style="margin-top:80px;">
        <h2>Full Rankings</h2>

        <div class="card animate" style="overflow-x:auto;margin-top:20px;">
            <table style="width:100%;border-collapse:collapse;">
                <thead>
                    <tr style="text-align:left;">
                        <th>Rank</th>
                        <th>Username</th>
                        <th>Level</th>
                        <th>Total Score</th>
                        <th>Games Played</th>
                        <th>Garden Score</th>
                        <th>Badges</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>GreenMaster</td>
                        <td>12</td>
                        <td>1250</td>
                        <td>40</td>
                        <td>300</td>
                        <td>🌱🏆</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>CropChampion</td>
                        <td>10</td>
                        <td>1100</td>
                        <td>35</td>
                        <td>260</td>
                        <td>🌿</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>EcoLearner</td>
                        <td>9</td>
                        <td>980</td>
                        <td>30</td>
                        <td>220</td>
                        <td>🌾</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>You</td>
                        <td>5</td>
                        <td>420</td>
                        <td>15</td>
                        <td>80</td>
                        <td>🌱</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>

    <!-- ================= USER POSITION ================= -->
    <section class="card animate" style="margin-top:80px;">
        <h2>Your Position</h2>
        <p>
            You are currently ranked <strong>#4</strong>.
        </p>
        <p>
            Only <strong>60 points</strong> to reach the next rank!
        </p>
    </section>

    <!-- ================= FAIR PLAY ================= -->
    <section class="card animate" style="margin-top:60px;">
        <h2>Fair Play & Scoring</h2>
        <ul>
            <li>Scores are based on accuracy and consistency</li>
            <li>Gardening rewards sustainable choices</li>
            <li>No shortcuts or pay-to-win mechanics</li>
        </ul>
    </section>

    <!-- ================= COMMUNITY MESSAGE ================= -->
    <section style="margin-top:60px;text-align:center;">
        <p class="muted-text">
            Every step you take toward learning and sustainability matters.
        </p>
    </section>

    <!-- ================= ACTIONS ================= -->
    <section style="margin-top:40px;display:flex;gap:20px;flex-wrap:wrap;">
        <a class="btn-primary" href="${pageContext.request.contextPath}/views/play.jsp">Continue Playing</a>
        <a class="btn-primary" href="${pageContext.request.contextPath}/views/garden.jsp">Visit Virtual Garden</a>
    </section>

</main>

<footer style="margin-top:80px;text-align:center;padding:20px;">
    🌱 Compete kindly. Learn together. Grow sustainably.
</footer>
<script src="<%= request.getContextPath() %>/assets/js/scroll.js"></script>

</body>
</html>
