# 💰 Money Mitra

### Interactive Financial Literacy Platform

Money Mitra is an interactive financial-literacy platform designed to make personal finance easier to understand through **structured learning, practical examples, quizzes, gamification, and personalized progress tracking**.

The platform transforms financial concepts into an engaging learning experience where users can learn concepts, test their understanding, receive immediate feedback, and progressively build better financial knowledge.

---

## 🎯 Problem

Financial concepts such as budgeting, saving, digital payments, credit, investing, and financial planning can often be difficult to understand through traditional learning methods.

Money Mitra addresses this gap by providing an interactive platform that combines **education, practice, feedback, and gamification** in a single learning journey.

---

## 🚀 Key Features

### 📚 Structured Financial Learning

Money Mitra currently provides two functional learning levels containing **20 learning modules** covering practical financial concepts.

### Level 1 — Money Fundamentals

1. What is a Budget?
2. Needs vs Wants
3. Saving Habits
4. Income & Expenses
5. Goal Setting
6. Pocket Money Planning
7. Smart Shopping
8. Sharing & Giving
9. Money & Time
10. Building Good Habits

### Level 2 — Banking & Investing

1. Banking Basics
2. UPI & Digital Payments
3. Spotting Online Scams
4. Budgeting Apps & Tracking
5. Credit vs Debit
6. The EMI Trap
7. Saving vs Investing
8. SIP, RD & PPF
9. Setting a Financial Goal
10. Basic Tax Awareness

---

## 🎮 Gamified Learning

Money Mitra incorporates gamification to make financial learning more engaging.

Users can earn:

* **+10 XP** for a correct answer
* **+2 XP** for an incorrect answer
* Learning streaks
* Module completion progress
* Achievement badges
* Visual feedback and celebrations

Quiz questions and answer options are randomized to provide variation across attempts.

---

## 🧠 Learning Methodology

Money Mitra follows a simple learning cycle:

```text
Choose Level
     ↓
Choose Module
     ↓
Learn the Concept
     ↓
Attempt Quiz
     ↓
Answer Question
     ↓
Receive Immediate Feedback
     ↓
Understand the Explanation
     ↓
Continue Learning
     ↓
Complete Module
     ↓
Earn XP & Update Progress
```

The platform combines **concept learning, active recall, immediate feedback, and gamification** to encourage continuous learning.

---

## 📝 Interactive Quizzes

Each learning module has its own quiz content.

Quiz questions contain:

* Question
* Multiple answer options
* Correct answer
* Explanation

When a user selects an answer, the application immediately indicates whether the answer is correct or incorrect and provides an explanation.

This allows users to understand mistakes instead of simply receiving a score.

---

## 🏆 Progress & Achievements

Money Mitra tracks user learning activity including:

* Total XP
* Current streak
* Last activity
* Completed modules
* Level-wise progress
* Achievement badges

Current achievement examples include:

* 🌱 Beginner
* 💡 Curious
* 🏆 Achiever
* 🔥 On Fire
* ⭐ Star
* 💰 Money Guru

---

## 🔐 Authentication

Money Mitra uses **Firebase Authentication** to provide secure user accounts.

The authentication layer allows each user to have an individual identity within the platform.

```text
User
 ↓
Sign Up / Login
 ↓
Firebase Authentication
 ↓
Authenticated User ID
 ↓
Money Mitra Dashboard
```

---

## ☁️ Cloud-Based User Progress

User-specific learning progress can be associated with their authenticated account using **Cloud Firestore**.

The user profile can contain information such as:

```text
User
 ├── Profile Information
 ├── Total XP
 ├── Current Streak
 ├── Last Activity Date
 └── Completed Modules
```

This architecture allows learning progress to be associated with the user's account rather than being restricted to a single device.

---

## 🏗️ Application Architecture

```text
                    Money Mitra
                         │
                         ▼
                Flutter Application
                         │
              ┌──────────┴──────────┐
              │                     │
          UI / Screens          State Management
              │                     │
              │                  Provider
              │                     │
              └──────────┬──────────┘
                         │
                         ▼
                    Service Layer
                         │
              ┌──────────┴──────────┐
              │                     │
       Firebase Authentication   Firestore
              │                     │
              └──────────┬──────────┘
                         │
                         ▼
                  User & Progress Data
```

---

## 🛠️ Technology Stack

| Technology                  | Purpose                       |
| --------------------------- | ----------------------------- |
| **Flutter**                 | Application and web interface |
| **Dart**                    | Programming language          |
| **Provider**                | State management              |
| **Firebase Authentication** | User authentication           |
| **Cloud Firestore**         | User and progress data        |
| **SharedPreferences**       | Local preferences/storage     |
| **Confetti**                | Gamification effects          |

---

## 📁 Project Structure

```text
lib/
│
├── data/
│   ├── module_intros/
│   │   ├── level_1/
│   │   └── level_2/
│   │
│   └── quiz/
│       ├── level_1/
│       └── level_2/
│
├── screens/
│   ├── home_screen.dart
│   ├── level_modules_screen.dart
│   ├── module_intro_screen.dart
│   ├── lesson_screen.dart
│   ├── quiz_screen.dart
│   ├── result_screen.dart
│   └── profile_screen.dart
│
├── services/
│   └── game_state.dart
│
├── widgets/
│   ├── answer_card.dart
│   └── app_header.dart
│
└── main.dart
```

---

## 🔄 User Journey

```text
Launch Money Mitra
       ↓
Create Account / Login
       ↓
Home Dashboard
       ↓
View XP, Streak & Progress
       ↓
Select Learning Level
       ↓
Select Financial Topic
       ↓
Learn the Concept
       ↓
Start Quiz
       ↓
Answer Questions
       ↓
Receive Instant Feedback
       ↓
Read Explanation
       ↓
Complete Quiz
       ↓
Update XP & Streak
       ↓
Mark Module Complete
       ↓
View Results
       ↓
Continue Learning / Retry
```

---

## 🔮 Future Scope

Money Mitra is designed to be extensible and can evolve into a broader financial-learning ecosystem.

Potential future enhancements include:

* AI-powered financial education
* Personalized learning paths
* Multiple language support
* Real-world financial scenarios
* Financial simulations
* Goal-based learning
* Leaderboards and challenges
* Progress analytics
* Additional learning levels
* Interactive investment simulations
* Personalized recommendations
* Notifications and learning reminders
* Expanded financial topics

---

## 🎯 Vision

Money Mitra aims to make financial literacy **simple, practical, interactive, and accessible**.

Instead of only presenting financial concepts, the platform encourages users to **learn, practice, make decisions, understand mistakes, and progressively develop stronger financial knowledge and habits**.

> **Learn Money. Play Smart. Build Your Future.**
