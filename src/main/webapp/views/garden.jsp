<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Virtual Garden | PureYield</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- Global CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/global.css">

    <style>
        .garden-area {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
            flex-wrap: wrap;
            gap: 30px;
        }

        .tool {
            text-align: center;
            cursor: grab;
        }

        .tool img {
            width: 90px;
            transition: transform 0.2s;
        }

        .tool img:hover {
            transform: scale(1.1);
        }

        .soil {
            width: 320px;
            height: 220px;
            border: 3px dashed #7a5c3c;
            border-radius: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: #f4efe8;
            font-size: 18px;
            padding: 10px;
        }

        .success {
            background: #d4f7c5;
            border-color: green;
        }

        .error {
            background: #ffd6d6;
            border-color: red;
        }
        .seed {
    width: 120px;
    height: 120px;
    object-fit: contain;   /* keeps aspect ratio */
    cursor: grab;
    transition: transform 0.2s ease;
}

.seed:hover {
    transform: scale(1.05);
}

.seed:active {
    cursor: grabbing;
}
        
    </style>
</head>

<body>

<header class="navbar">
    <div class="logo">🌱 PureYield</div>
    <ul>
        <li><a href="${pageContext.request.contextPath}/play">Play</a></li>
        <li><a href="${pageContext.request.contextPath}/views/leaderboard.jsp">Leaderboard</a></li>
    </ul>
</header>

<main class="page-container">

    <section>
        <h1>🌱 Virtual Garden</h1>
        <p class="muted-text">Drag items in the correct order to grow your plant.</p>
    </section>

    <!-- PLAYER INFO -->
    <section class="card">
        <h3>👤 Player</h3>
        <p><strong>Name:</strong> ${player.name}</p>
        <p><strong>Score:</strong> ${player.score}</p>
    </section>

    <!-- GAME AREA -->
    <section class="garden-area">

        <!-- TOOLS -->
        <div class="garden-area">
        <img src="${pageContext.request.contextPath}/assets/images/harvest.jpg"
         id="harvest"
         class="seed"
         draggable="true"
         ondragstart="drag(event)">

   

    <img src="${pageContext.request.contextPath}/assets/images/water.jpg"
         id="water"
         class="seed"
         draggable="true"
         ondragstart="drag(event)">
         
          <img src="${pageContext.request.contextPath}/assets/images/tomatoseed.jpg"
         id="seed"
         class="seed"
         draggable="true"
         ondragstart="drag(event)">

    <img src="${pageContext.request.contextPath}/assets/images/fertilizer.jpg"
         id="fertilize"
         class="seed"
         draggable="true"
         ondragstart="drag(event)">

    

    <div id="soil" class="soil"
         ondrop="drop(event)"
         ondragover="allowDrop(event)">
         🌱 Drop seed here
    </div>
</div>

    </section>

</main>

<footer style="margin-top:60px;text-align:center;">
    🌱 Grow consciously. Learn sustainably.
</footer>

<script>
    let steps = ["seed", "water", "fertilize", "harvest"];
    let currentStep = 0;

    function allowDrop(ev) {
        ev.preventDefault();
    }

    function drag(ev) {
        ev.dataTransfer.setData("text", ev.target.id);
    }

    function drop(ev) {
        ev.preventDefault();

        const item = ev.dataTransfer.getData("text");

        if (item === steps[currentStep]) {
            currentStep++;

            document.getElementById("soil").innerHTML =
                "✅ Step " + currentStep + " completed";

            if (currentStep === steps.length) {
                document.getElementById("soil").innerHTML = "🌾 Plant Grown!";
                submitSuccess();
            }
        } else {
            alert("❌ Wrong order! Start again.");
            resetGame();
        }
    }

    function resetGame() {
        currentStep = 0;
        document.getElementById("soil").innerHTML = "🌱 Drop seed here";
    }

    function submitSuccess() {
        const form = document.createElement("form");
        form.method = "POST";
        form.action = "${pageContext.request.contextPath}/garden";

        const input = document.createElement("input");
        input.type = "hidden";
        input.name = "result";
        input.value = "correct";

        form.appendChild(input);
        document.body.appendChild(form);
        form.submit();
    }
</script>

</body>
</html>
