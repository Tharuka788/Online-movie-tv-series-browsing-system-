<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Details - Online Event Planning System</title>
    <style type="text/css">
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

        .navbar .nav-links a:hover {
            color: #ffde59;
        }

        /* Main Content Styling */
        main {
            flex: 1;
            padding-top: 80px;
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            color: #4a90e2;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Table Styling */
        table {
            border-collapse: collapse;
            width: 100%;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #4a90e2;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Button Styling */
        .action-buttons {
            margin: 20px 0;
            display: flex;
            gap: 15px;
            justify-content: center;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            background-color: #4a90e2;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s;
            cursor: pointer;
            font-size: 1rem;
            border: none;
            outline: none;
        }

        .btn:hover {
            background-color: #357abd;
        }

        .btn.delete {
            background-color: #e74c3c;
        }

        .btn.delete:hover {
            background-color: #c0392b;
        }

        /* Footer Styling */
        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
            font-size: 0.9rem;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 50px;
            box-shadow: 0 -2px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
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
    <!-- Main Content -->
    <main>
        <h1>Customer Details</h1>
        <table>
            <c:forEach var="cus" items="${cusDetails}">
                <tr>
                    <th>Customer ID</th>
                    <td>${cus.id}</td>
                </tr>
                <tr>
                    <th>Customer Name</th>
                    <td>${cus.name}</td>
                </tr>
                <tr>
                    <th>Customer Email</th>
                    <td>${cus.email}</td>
                </tr>
                <tr>
                    <th>Customer Phone</th>
                    <td>${cus.phone}</td>
                </tr>
                <tr>
                    <th>Customer User Name</th>
                    <td>${cus.userName}</td>
                </tr>
            </c:forEach>
        </table>
        
        <div class="action-buttons">
            <!-- Update Button -->
            <c:forEach var="cus" items="${cusDetails}">
                <c:url value="updatecustomer.jsp" var="cusupdate">
                    <c:param name="id" value="${cus.id}" />
                    <c:param name="name" value="${cus.name}" />
                    <c:param name="email" value="${cus.email}" />
                    <c:param name="phone" value="${cus.phone}" />
                    <c:param name="uname" value="${cus.userName}" />
                    <c:param name="pass" value="${cus.password}" />
                </c:url>
                <a href="${cusupdate}" class="btn">Update My Data</a>
                
                <!-- Delete Button -->
                <c:url value="deletecustomer.jsp" var="cusdelete">
                    <c:param name="id" value="${cus.id}" />
                    <c:param name="name" value="${cus.name}" />
                    <c:param name="email" value="${cus.email}" />
                    <c:param name="phone" value="${cus.phone}" />
                    <c:param name="uname" value="${cus.userName}" />
                    <c:param name="pass" value="${cus.password}" />
                </c:url>
                <a href="${cusdelete}" class="btn delete">Delete My Account</a>
            </c:forEach>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        &copy; 2024 Online Event Planning System. All Rights Reserved.
    </footer>
</body>
</html>
