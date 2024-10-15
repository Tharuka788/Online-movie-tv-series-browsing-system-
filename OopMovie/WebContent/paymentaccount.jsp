<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body {
            background-image: url('images/flat.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }





body {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    margin: 0;
    font-family: 'Arial', sans-serif;
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

        hr {
            border: 1px solid #007BFF;
            margin: 20px 0;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(192, 192, 192, 0.9);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        input[type="button"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="button"]:hover {
            background-color: #0056b3;
        }


        /* Footer Styling */
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            bottom: 0;
            width: 100%;
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

            .nav-links {
                display: none;
            }
        }
    </style>
    <meta charset="ISO-8859-1">
    <title>Payment Update</title>
</head>
<body>
    <header>
        <nav>
            <div class="logo">MOVIE HUB</div>
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
<br><br><br><br><br><br><br><br><br><br>

    <center>
        <table border="1">
            <tr>
                <th>Card Name</th>
                <th>Card ID</th>
                <th>Customer Name</th>
                <th>Card Number</th>
                <th>Card Expire Date</th>
                <th>CVC</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>	

            <c:forEach var="payment" items="${paydetails}">
                <tr>
                    <td>${payment.propertyname}</td>
                    <td>${payment.paymentid}</td>
                    <td>${payment.name}</td>
                    <td>${payment.cardno}</td>
                    <td>${payment.cardexpdate}</td>
                    <td>${payment.cvc}</td>
                    <td>
                        <c:url value="updatepayment.jsp" var="payupdate">
                            <c:param name="propertyname" value="${payment.propertyname}"/>
                            <c:param name="paymentid" value="${payment.paymentid}"/>
                            <c:param name="name" value="${payment.name}"/>
                            <c:param name="cardno" value="${payment.cardno}"/>
                            <c:param name="cardexpdate" value="${payment.cardexpdate}"/>
                            <c:param name="cvc" value="${payment.cvc}"/>
                        </c:url>
                        <a href="${payupdate}">
                            <input type="button" name="update" value="Update Details">
                        </a>
                    </td>
                    <td>
                        <c:url value="deletepayment.jsp" var="paydelete">
                            <c:param name="propertyname" value="${payment.propertyname}"/>
                            <c:param name="paymentid" value="${payment.paymentid}"/>
                            <c:param name="name" value="${payment.name}"/>
                            <c:param name="cardno" value="${payment.cardno}"/>
                            <c:param name="cardexpdate" value="${payment.cardexpdate}"/>
                            <c:param name="cvc" value="${payment.cvc}"/>
                        </c:url>
                        <a href="${paydelete}">
                            <input type="button" name="delete" value="Delete Details">
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </center>

<br><br><br><br><br><br><br><br><br><br>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>

</body>
</html>
