<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Volunteer Registration - OneWorld HumanityNetwork</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
            background: linear-gradient(135deg, #fff6b7 0%, #facc6b 50%, #f98d48 100%);
            font-family: 'Segoe UI', sans-serif;
        }
        .register-container {
            max-width: 600px;
            margin: 60px auto;
            background: #ffffffcc;
            border-radius: 12px;
            padding: 40px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.12);
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
            color: #ff8500;
        }
        .btn-submit {
            background-color: #ffa502;
            border: none;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }
        .btn-submit:hover {
            background-color: #ff7f00;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="https://cdn.freebiesupply.com/logos/large/2x/coindash-logo-black-and-white.png" alt="Logo" width="32" height="32" class="d-inline-block align-text-top me-2">
                <span>OneWorld HumanityNetwork</span>
            </a>
        </div>
    </nav>

    <!-- Registration Form -->
    <div class="register-container">
        <h3 class="text-center mb-4 text-dark">Become a Volunteer</h3>
        <form action="<%= request.getContextPath() %>/register" method="post">

            <div class="row mb-3">
                <div class="col">
                    <label class="form-label">First Name</label>
                    <input type="text" name="firstName" class="form-control" required />
                </div>
                <div class="col">
                    <label class="form-label">Last Name</label>
                    <input type="text" name="lastName" class="form-control" required />
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Username</label>
                <input type="text" name="username" class="form-control" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="password" class="form-control" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Address</label>
                <input type="text" name="address" class="form-control" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Contact No</label>
                <input type="text" name="contact" class="form-control" required />
            </div>

            <div class="d-grid mt-4">
                <button type="submit" class="btn btn-submit btn-lg">Submit</button>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<!--
  © 2025 Chinmayee C J. All rights reserved.
  Unauthorized copying, distribution, or modification of this file is strictly prohibited.
-->

