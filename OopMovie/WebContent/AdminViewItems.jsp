<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal - All Movies</title>
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
            width: auto;
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
            max-width: 1200px;
            margin: 80px auto;
            padding: 20px;
            background-color: #fff;
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            font-size: 2.2em;
            margin-bottom: 20px;
        }

        /* Movie Grid Styling */
        .movie-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .movie-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s;
        }

        .movie-card:hover {
            transform: translateY(-5px);
        }

        .movie-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .movie-info {
            padding: 15px;
            text-align: center;
        }

        .movie-info h3 {
            color: #4a90e2;
            margin-bottom: 10px;
        }

        .movie-info p {
            margin-bottom: 15px;
            color: #555;
        }

        .movie-price {
            font-size: 1.2em;
            color: #333;
            margin-bottom: 10px;
        }

        .movie-actions {
            display: flex;
            justify-content: space-between;
            padding: 0 10px 10px;
        }

        .btn {
            background-color: #4a90e2;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1rem;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #357abd;
        }

        .btn-danger {
            background-color: #e74c3c;
        }

        .btn-danger:hover {
            background-color: #c0392b;
        }

        /* Footer Styling */
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: 50px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }

            .burger {
                display: block;
            }

            .container {
                margin: 100px auto;
                padding: 20px;
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <header>
        <nav>
            <div class="logo">Movie & TV Series Portal</div>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
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

<div class="container">
    <div class="movie-grid">
        <c:forEach var="item" items="${items}">
            <div class="movie-card">
                <div class="movie-info">
                    <h3><c:out value="${item.itemName}"/></h3>
                    <p><c:out value="${item.description}"/></p>
                    <div class="movie-price">Rs. <c:out value="${item.price}"/></div>
                </div>
                <div class="movie-actions">
                    <c:url value="AdminUpdateItem.jsp" var="ItemUpdate">
                        <c:param name="itemNo" value="${item.itemNo}" />
                        <c:param name="itemName" value="${item.itemName}" />
                        <c:param name="description" value="${item.description}" />
                        <c:param name="itemImage" value="${item.itemImage}" />
                        <c:param name="price" value="${item.price}" />
                    </c:url>
                    <a href="${ItemUpdate}" class="btn">Update</a>

                    <c:url value="DeleteItem.jsp" var="ItemDelete">
                        <c:param name="itemNo" value="${item.itemNo}" />
                        <c:param name="itemName" value="${item.itemName}" />
                        <c:param name="description" value="${item.description}" />
                        <c:param name="itemImage" value="${item.itemImage}" />
                        <c:param name="price" value="${item.price}" />
                    </c:url>
                    <a href="${ItemDelete}" class="btn btn-danger">Delete</a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>
</html>
