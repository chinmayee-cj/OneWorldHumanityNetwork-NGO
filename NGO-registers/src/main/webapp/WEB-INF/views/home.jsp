<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="net.ngo.registration.model.ConnectionEntry" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - OneWorld HumanityNetwork</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(135deg, #fff6b7 0%, #facc6b 50%, #f98d48 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        .container-box {
            max-width: 900px;
            margin: 50px auto;
            background: #ffffffee;
            padding: 40px 32px;
            border-radius: 16px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.10);
        }
        .navbar {
            background-color: #fff3cd;
        }
        .navbar-brand span {
            font-weight: 600;
            color: #ff8400;
        }
        .btn-connect {
            background-color: #ffa502;
            border: none;
            font-weight: 600;
        }
        .btn-connect:hover {
            background-color: #ff7f00;
        }
        .section-heading {
            font-weight: 600;
            color: #ff8400;
            letter-spacing: 0.5px;
        }
        .section-subheading {
            font-weight: 500;
            color: #b36500;
        }
        .img-group {
            gap: 1.5rem;
        }
        .img-group img {
            border-radius: 12px;
            box-shadow: 0 2px 14px -2px #ffbc5f55;
            width: 100%;
            object-fit: cover;
            max-height: 170px;
        }
        .sdg-icons {
            width: 64px;
            height: 64px;
            object-fit: contain;
            margin: 8px;
        }
        .works-para, .aim-para, .objective-para {
            background: #fffbe7;
            border-radius: 9px;
            padding: 15px 22px;
            margin-bottom: 1.5rem;
            font-size: 1.06rem;
            color: #825d02;
        }
        .table thead {
            background: linear-gradient(90deg,#ffdf7f,#ffd966 80%,#ffeab3);
            color: #994e00;
            font-size: 1.02rem;
        }
        .table tbody tr {
            background: #fffdf6;
            transition: background 0.18s;
        }
        .table tbody tr:hover {
            background: #ffe17a40;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">
            <img src="https://cdn.freebiesupply.com/logos/large/2x/coindash-logo-black-and-white.png" width="32" height="32" class="d-inline-block align-text-top me-2" />
            <span>OneWorld HumanityNetwork</span>
        </a>
    </div>
</nav>

<div class="container-box">

    <!-- Welcome Section -->
    <h3 class="text-center text-dark mb-4">Welcome to the NGO Homepage</h3>
    <p class="text-center text-muted">Welcome, <strong><%= session.getAttribute("username") %></strong> |
        <a href="<%= request.getContextPath() %>/logout" class="text-danger text-decoration-none">Logout</a>
    </p>
    <!-- Hero Horizontal Image -->
    <div class="mb-4">
        <img 
            src="https://mumsatthetable.com/wp-content/uploads/2022/05/Mums-At-The-Table-Donate-Now-web-banner.png" 
            alt="NGO Banner" 
            class="img-fluid rounded-4 shadow-sm w-100"
            style="max-height: 270px; object-fit: cover;">
    </div>

    <!-- Aim Section -->
    <h4 class="section-heading mb-2">Our Aim</h4>
    <div class="aim-para mb-4">
        To empower vulnerable communities by facilitating quality education, health care, and social integration.<br>
        We strive to build a more inclusive, compassionate world where every individual can thrive.<br>
        Our focus is on long-lasting impact through sustainable grassroots initiatives.<br>
        Collaboration, equity, and dignity are at the core of all our actions.
    </div>

    <!-- Objectives Section -->
    <h5 class="section-subheading mb-2">Objectives</h5>
    <div class="objective-para mb-4">
        <ul>
            <li>Provide access to education for children in underprivileged regions.</li>
            <li>Promote gender equality and empower women and girls.</li>
            <li>Facilitate better health and hygiene in marginalized communities.</li>
            <li>Promote environmental stewardship and community-led development.</li>
        </ul>
    </div>
    
    <!-- Middle Image Group -->
    <div class="row img-group justify-content-center mb-5">
        <div class="col-12 col-md-4 mb-3">
            <img src="https://aquietrefuge.com/wp-content/uploads/2024/05/aries-in-love.jpg" alt="Activity 1" class="w-100">
        </div>
        <div class="col-12 col-md-4 mb-3">
            <img src="https://img.freepik.com/premium-photo/world-humanity-day-photography-international-humanitarian-day-photography_950002-48546.jpg" alt="Activity 2" class="w-100">
        </div>
        <div class="col-12 col-md-4 mb-3">
            <img src="https://www.ulc.org/assets/ulc/blog/humanity.jpg" alt="Activity 3" class="w-100">
        </div>
    </div>

    <!-- Accomplished Works & SDG Section -->
    <h4 class="section-heading mb-2">Our Work & the SDGs</h4>
    <div class="works-para mb-4 p-3">
        Over the past years, OneWorld HumanityNetwork has facilitated educational programs for more than 2,000 children and distributed essential health kits in remote villages. Our environmental drives have led to the planting of over 10,000 native trees, contributing to climate resilience. All our efforts directly support the United Nations Sustainable Development Goals (SDGs), including Quality Education (SDG4), Gender Equality (SDG5), Good Health (SDG3), and Climate Action (SDG13).
    </div>
    <div class="row img-group justify-content-center mb-5">
        <div class="col-12 col-md-4 mb-3">
            <img src="https://1.bp.blogspot.com/-ZkWC9H9Z7xE/Xy6J-_P1kgI/AAAAAAAAAAU/yRCb2ABdznA97f07B8tsc_9euJx4JaNyACLcBGAsYHQ/s700/191286_1.jpg" alt="Activity 1" class="w-100">
        </div>
        <div class="col-12 col-md-4 mb-3">
            <img src="https://static.vecteezy.com/system/resources/thumbnails/003/009/918/small_2x/gender-equality-concept-vector.jpg" alt="Activity 2" class="w-100">
        </div>
        <div class="col-12 col-md-4 mb-3">
            <img src="https://good-health.co.uk/wp-content/uploads/2021/06/good-health.jpg" alt="Activity 3" class="w-100">
        </div>
    </div>	

    <!-- Connect With Us Form -->
    <h4 class="mt-5 mb-3 text-dark">Connect With Us</h4>
    <form action="<%= request.getContextPath() %>/connect" method="post">
        <div class="mb-3">
            <label for="review" class="form-label">Your Review:</label>
            <textarea name="review" id="review" class="form-control" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-connect btn-lg">Connect</button>
    </form>

 <!-- Live Review Carousel -->
    <h4 class="mt-5 mb-4 text-dark text-center">People Who Connected</h4>
    <div class="d-flex justify-content-center mb-4">
        <div id="reviewCarousel" class="carousel slide w-100" data-bs-ride="carousel" data-bs-interval="4200">
            <div class="carousel-inner" style="background: #fffbe7; border-radius: 16px; padding: 30px 25px; min-height:130px;">

                <%
                    List<ConnectionEntry> connections = (List<ConnectionEntry>) request.getAttribute("connections");
                    boolean first = true;
                    if (connections != null && !connections.isEmpty()) {
                        for (ConnectionEntry entry : connections) {
                %>
                <div class="carousel-item <%= first ? "active" : "" %>">
                    <div class="d-flex align-items-start gap-3 flex-column flex-md-row">
                        <div style="width:54px; height:54px; background:#ffe3a3; border-radius:50%; display:flex; align-items:center; justify-content:center; font-size:1.3rem; font-weight:700; color:#e99b05;">
                            <%= entry.getUsername().substring(0,1).toUpperCase() %>
                        </div>
                        <div>
                            <div style="font-weight:600; color:#e68100; font-size:1.05rem;">
                                <%= entry.getUsername() %>
                            </div>
                            <div class="text-secondary fst-italic">
                                "<%= entry.getReview() %>"
                            </div>
                        </div>
                    </div>
                </div>
                <%
                            first = false;
                        }
                    } else {
                %>
                <div class="carousel-item active">
                    <div class="text-center text-muted">
                        No connections yet. Be the first to connect!
                    </div>
                </div>
                <%
                    }
                %>
            </div>

        <!-- Optional: Carousel Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#reviewCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#reviewCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	

</body>
</html>
<!--
  © 2025 Chinmayee C J. All rights reserved.
  Unauthorized copying, distribution, or modification of this file is strictly prohibited.
-->

