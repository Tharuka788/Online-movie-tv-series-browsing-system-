<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal - Inquiry Deletion</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            color: #333;
            background-color: #f9f9f9;
        }

        h2 {
            text-align: center;
            margin: 20px 0;
        }

        /* Header */
        header {
            background-color: #2c3e50;
            color: #fff;
            padding: 10px 20px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-links {
            list-style-type: none;
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
        }
        .nav-links a:hover{
        	color:  orange;
        }

        .burger {
            display: none;
            cursor: pointer;
        }

        .burger div {
            width: 25px;
            height: 3px;
            background-color: white;
            margin: 5px;
        }


        /* Container Styling */
        .container {
            margin-top: 80px;
            max-width: 600px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            background-color: #fff;
        }

        .card h2 {
            color: #4a90e2;
            margin-bottom: 20px;
        }

        .inputs p {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .inputs input {
            background-color: #f8f9fa;
            border: 1px solid #ced4da;
            border-radius: 4px;
            padding: 10px;
            width: 100%;
            display: inline-block;
            color: #333;
            cursor: not-allowed;
        }

        /* Button Styling */
        .btn-custom {
            background-color: #e74c3c;
            border-color: #e74c3c;
            color: #fff;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-custom:hover {
            background-color: #c0392b;
            border-color: #c0392b;
        }

        /* Footer Styling */
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <!-- Navbar Section -->
    <header>
        <nav>
            <div class="logo">Movie & TV Series Portal</div>
            <ul class="nav-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">Movies</a></li>
                <li><a href="paymentinsert.jsp">Add Payment</a></li>
                <li><a href="customerinsert.jsp">Register</a></li>
                <li><a href="add-items-form.jsp">Add Movie</a></li>
                <li><a href="InqInsert.jsp">Inquiry</a></li>
                <li><a href="login.jsp">Log in</a></li>
            </ul>
            <div class="burger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
        </nav>
    </header>
<br><br><br><br>

    <!-- Inquiry Deletion Container -->
    <div class="container">
        <div class="card mt-4">
            <h2 class="text-center">Inquiry Form Details</h2>
            <form action="deleteInq" method="post">
                <!-- Retrieve values from the previous page and display them in the form -->
                <% 
                    String name = request.getParameter("name");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    String nic = request.getParameter("nic");
                    String title = request.getParameter("title");
                    String inquiry = request.getParameter("inquiry");
                %>
                
                <div class="inputs">
                    <p>Full Name</p>
                    <input type="text" name="name" value="<%= name %>" readonly>
                </div> 
                <div class="inputs">
                    <p>Phone</p>
                    <input type="text" name="phone" value="<%= phone %>" readonly>
                </div>
                <div class="inputs">
                    <p>Email</p>
                    <input type="email" name="email" value="<%= email %>" readonly>
                </div>
                <div class="inputs">
                    <p>NIC</p>
                    <input type="text" name="nic" value="<%= nic %>" readonly>
                </div>
                <div class="inputs">
                    <p>Title</p>
                    <input type="text" name="title" value="<%= title %>" readonly>
                </div>
                <div class="inputs">
                    <p>Inquiry</p>
                    <input type="text" name="inquiry" value="<%= inquiry %>" readonly>
                </div>
                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-custom" onclick="return confirm('Are you sure you want to delete this inquiry?');">Delete Inquiry</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Footer Section -->
    <div class="footer">
        &copy; 2024 Online Event Planning System. All rights reserved.
    </div>

    <!-- Bootstrap JS CDN and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
