<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login - OneWorld HumanityNetwork</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom Styles -->
    <style>
        body {
            background: linear-gradient(135deg, #fff6b7 0%, #facc6b 50%, #f98d48 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        .login-container {
            max-width: 400px;
            margin: 80px auto;
            background: #ffffffdd;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
        }
        .form-control:focus {
            border-color: #fca311;
            box-shadow: 0 0 5px rgba(255, 172, 51, 0.6);
        }
        .navbar {
            background-color: #fff3cd;
        }
        .navbar-brand span {
            font-weight: bold;
            color: #ff8400;
        }
        .btn-login {
            background-color: #ffa502;
            border: none;
            font-weight: 600;
        }
        .btn-login:hover {
            background-color: #ff7f00;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">
                <!-- Logo -->
                <img src="https://cdn.freebiesupply.com/logos/large/2x/coindash-logo-black-and-white.png" alt="Logo" width="32" height="32" class="d-inline-block align-text-top me-2">
                <span>OneWorld HumanityNetwork</span>
            </a>
        </div>
    </nav>

    <!-- Login Form -->
    <div class="login-container">
        <h3 class="text-center mb-4 text-dark">Volunteer Login</h3>
        <form action="<%= request.getContextPath() %>/login" method="post">
            <div class="mb-3">
                <label for="username" class="form-label">Username</label>
                <input type="text" name="username" class="form-control" id="username" required />
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" name="password" class="form-control" id="password" required />
            </div>
            <div class="d-grid">
                <button type="submit" class="btn btn-login btn-lg">Login</button>
            </div>
        </form>

        <!-- Error Message -->
        <%
            String error = (String) request.getAttribute("errorMessage");
            if (error != null && !error.isEmpty()) {
        %>
        <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
            <%= error %>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<!--
  © 2025 Chinmayee C J. All rights reserved.
  Unauthorized copying, distribution, or modification of this file is strictly prohibited.
-->
