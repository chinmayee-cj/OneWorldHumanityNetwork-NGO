# 🌍 OneWorld HumanityNetwork Volunteer Portal

Welcome to the **OneWorld HumanityNetwork Volunteer Portal** — a full-stack Java web application built with Servlets, JSP, and Bootstrap to manage volunteer registration, engagement, and NGO impact storytelling. This system is designed for NGOs to onboard volunteers, showcase mission-driven work, and create a lasting digital connection with supporters.

---

## ✨ Features

- ✅ **Volunteer Registration & Login**
  - Secure session-based authentication
  - Signup form collects complete volunteer profile

- 💬 **Connect With Us Feedback**
  - Logged-in users can submit reviews
  - Messages are stored in MySQL and shown dynamically on the homepage

- 💌 **Automated Acknowledgment Emails**
  - Sends a thank-you email to every volunteer on submitting a review using JavaMail + Gmail SMTP
  - 
- 🎨 **Responsive, Themed UI**
  - Built with Bootstrap 5 and a vibrant orange-yellow color scheme
  - Custom layout, shadowed cards, colorful CTAs

- 🧭 **Mission Summary & Objective Highlights**
  - "Our Aim", "Objectives", and project accomplishments are featured with visually separated sections

---

## 🚀 Getting Started

1. **Clone this repository**

git clone [https://github.com/<your-username>/ngo-volunteer-portal.git](https://github.com/chinmayee-cj/OneWorldHumanityNetwork-NGO)


2. **Import into an IDE (Eclipse / IntelliJ)**
   - As a Dynamic Web Project or simple Java + Web project

3. **Set up MySQL database**
   - Use the following schema:

CREATE DATABASE ngo;

CREATE TABLE volunteer (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
username VARCHAR(50),
email VARCHAR(100),
password VARCHAR(255),
address VARCHAR(255),
contact VARCHAR(20)
);

CREATE TABLE connections (
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50),
review TEXT
);


4. **Configure EmailUtil.java and volunteerDao.java**

Update your code with configuration values using safe practices.

- In `EmailUtil.java`, replace with environment-aware or placeholder values:
final String from = "your_email@gmail.com";
final String password = "your-app-password"; // do NOT hardcode in prod


- In `volunteerDao.java`, configure:
String dbUrl = "jdbc:mysql://localhost:3306/ngo";
String user = "root";
String pass = "your-db-password"; // move to env var in production


5. **Place JavaMail JARs in /WEB-INF/lib**

Required dependencies:
- `javax.mail.jar`
- `activation.jar`

6. **Deploy to Tomcat Server**

Run from within Eclipse, IntelliJ, or deploy the WAR to Tomcat on localhost or a production server.

---

## ✅ Environment Variables (Recommended)

To keep sensitive data out of your repo, use environment variables:

| Variable       | Description                           |
|----------------|---------------------------------------|
| `DB_PASS`      | MySQL database password               |
| `EMAIL_USER`   | Gmail sender address                  |
| `EMAIL_PASS`   | Gmail app password                    |

You can supply them via shell environment, IDE configuration, or use a local property injector.

---

## 🙌 Project Goals

The objective behind OneWorld HumanityNetwork's platform is to:

- Enable NGOs to digitize volunteer recruitment
- Share real project experiences and success stories
- Provide recognition through live engagement and feedback
- Align NGO missions with real-time engagement features

---

## 📝 License

This project is released under the **MIT License**.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


---

### 🚀 Empower connection. Inspire action.  
**Build community. One review, one volunteer at a time.**

