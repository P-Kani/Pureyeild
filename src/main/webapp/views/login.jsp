<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>PureYield | Login or Register</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">

    <!-- Global CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/global.css">

    <style>
        .auth-toggle {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 30px;
        }

        .auth-toggle button {
            background: none;
            border: none;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            color: var(--text-muted);
        }

        .auth-toggle button.active {
            color: var(--primary);
            border-bottom: 3px solid var(--primary);
            padding-bottom: 6px;
        }

        .auth-form {
            display: none;
        }

        .auth-form.active {
            display: block;
        }

        .trust-box {
            margin-top: 20px;
            font-size: 14px;
            color: var(--text-muted);
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<header class="navbar">
    <div class="logo">🌱 PureYield</div>
    <ul>
        <li><a href="<%= request.getContextPath() %>/index.jsp">Home</a></li>
        <li><a href="<%= request.getContextPath() %>/views/about.jsp">About</a></li>
        <li><a href="<%= request.getContextPath() %>/play">Play</a></li>
    </ul>
</header>

<main class="page-container">

    <div class="card login-card">

        <h1>Welcome to PureYield</h1>
        <p class="muted-text">
            Join the journey toward smarter food choices.
        </p>

        <!-- TOGGLE -->
        <div class="auth-toggle">
            <button id="loginTab" class="active" onclick="showLogin()">Login</button>
            <button id="registerTab" onclick="showRegister()">Register</button>
        </div>

        <!-- ================= LOGIN FORM ================= -->
       <form class="auth-form active" id="loginForm"
      method="post"
      action="${pageContext.request.contextPath}/login">


            <div class="form-group">
                <label>Username</label>
                <input type="email" name="email" required>

              
            </div>

            <button class="btn-primary full-width">
                Continue to PureYield
            </button>

            <div class="form-footer">
                <span class="muted-text">No password required for now</span>
            </div>
        </form>

        <!-- ================= REGISTER FORM (UI ONLY) ================= -->
        <form class="auth-form" id="registerForm">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" placeholder="Your name">
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="you@example.com" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" placeholder="Create a password">
            </div>

            <button class="btn-primary full-width" type="button">
                Registration Coming Soon
            </button>
        </form>

        <!-- TRUST -->
        <div class="trust-box">
            🔒 Your data is secure. Used only to track learning progress.
        </div>

        <p class="muted-text" style="margin-top:16px;">
            No pressure. Learn at your own pace. Every step counts.
        </p>

    </div>

</main>

<footer style="text-align:center;padding:20px;">
    🌱 Grow smart. Eat clean. Live sustainable.
</footer>

<script>
    function showLogin() {
        document.getElementById("loginForm").classList.add("active");
        document.getElementById("registerForm").classList.remove("active");
        document.getElementById("loginTab").classList.add("active");
        document.getElementById("registerTab").classList.remove("active");
    }

    function showRegister() {
        document.getElementById("registerForm").classList.add("active");
        document.getElementById("loginForm").classList.remove("active");
        document.getElementById("registerTab").classList.add("active");
        document.getElementById("loginTab").classList.remove("active");
    }
</script>

</body>
</html>
