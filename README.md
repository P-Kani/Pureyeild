🌱 PureYield – Interactive Sustainable Learning Platform

PureYield is a web-based educational platform designed to teach users about sustainable food choices, organic farming, and environmental awareness through interactive gameplay and virtual gardening.

This project blends learning + gamification using Java (Servlets & JSP), HTML/CSS/JS, and Apache Tomcat.

🚀 Features
✅ Implemented

🎮 Interactive gameplay (Identify mode)

🌱 Virtual garden with drag-and-drop planting

👤 Player session tracking

⭐ Score & progress tracking

🌍 Sustainability awareness

🧠 Learning-focused design

🎨 Responsive UI with animations

📊 Dynamic JSP rendering

🧩 In Progress / Upcoming

Database integration (MySQL)

Persistent user progress

Login & authentication

Leaderboard with rankings

Achievements & badges

More plant levels & challenges

🛠️ Tech Stack
Layer	Technology
Frontend	HTML, CSS, JavaScript
Backend	Java (Servlets, JSP)
Server	Apache Tomcat 9
IDE	Eclipse
Database	MySQL (planned)
📂 Project Structure
PureYieldWeb/
│
├── src/
│   └── main/
│       ├── java/
│       │   └── com/pureyield/web/
│       │       ├── controller/
│       │       ├── model/
│       │       └── util/
│       └── webapp/
│           ├── assets/
│           │   ├── css/
│           │   ├── images/
│           │   └── js/
│           ├── views/
│           │   ├── play.jsp
│           │   ├── garden.jsp
│           │   ├── leaderboard.jsp
│           │   └── about.jsp
│           └── index.jsp
│
└── README.md

▶️ How to Run the Project
1️⃣ Requirements

Java JDK 17+

Apache Tomcat 9

Eclipse IDE (recommended)

2️⃣ Setup in Eclipse

Open Eclipse

Import project:

File → Import → Existing Projects into Workspace


Select the project folder (PureYieldWeb)

Ensure Dynamic Web Module is enabled

3️⃣ Configure Tomcat

Add Apache Tomcat 9 server

Add project to server

Start server

Access in browser:

http://localhost:8081/PureYieldWeb

🌱 Gameplay Flow

Start on Home Page

Click Play

Enter Identify Mode

Drag & drop seeds correctly

Score increases automatically

Progress updates dynamically

Explore Virtual Garden

🎮 Example Game Logic

Drag seed → soil

Correct order → score increases

Wrong order → reset sequence

Visual feedback for learning

🧠 Learning Outcomes

✔ Sustainable farming knowledge
✔ Organic vs GMO awareness
✔ Interactive decision-making
✔ Environmental responsibility

🔒 Session Handling

Player info stored in HttpSession

Progress preserved per session

No login required yet

🧪 Future Enhancements

Database persistence (MySQL)

User authentication

Admin panel

Analytics dashboard

Sound & animations

Mobile optimization

⭐ Contribute / Feedback

Feel free to:

Fork the project

Submit issues

Suggest features

🌱 Grow smart. Learn consciously. Build sustainably.
