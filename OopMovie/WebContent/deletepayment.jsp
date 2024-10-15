<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Record</title>
    <style>
        body {
            background-image: url('images/update.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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

        .formcontent {
            margin: 0 auto;
            width: 700px;
            text-align: center;
            background-color: rgba(192, 192, 192, 0.9);
            border-radius: 8px;
            padding: 20px;
            opacity: 0.9;
        }

        form {
            width: 100%;
            padding: 20px;
        }

input[type="text"] {
    width: 60%;
    padding: 10px;
    margin: 20px auto;
    border-radius: 5px;
    border: 1px solid #ccc;
    display: block; /* Ensures the input is treated as a block element */
}

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Footer Styling */
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            position: relative; /* Changed to avoid overlapping with content */
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
    </style>
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


    
    <!-- Get the details passed from parameter from the URL of the paymentaccount.jsp page -->
    <%
        String propertyname = request.getParameter("propertyname");
        String paymentid = request.getParameter("paymentid");
        String name = request.getParameter("name");
        String cardno = request.getParameter("cardno");
        String cardexpdate = request.getParameter("cardexpdate");
        String cvc = request.getParameter("cvc");
    %><br><br><br><br><br><br><br><br><br><br>
        <div class="formcontent">
        
        <h1 align="center" class="capitalize">Delete the Record</h1> 
        
    <form action="Paymentdelete" method="post">
    	Card Name: <br/>
        <input type="text" name="propertyname" value="<%= propertyname %>" class="idper"><br>
        Card ID: <br/> 
        <input type="text" class="idper" name="paymentid" value="<%= paymentid %>" readonly><br>
        Customer's Name: <br/>
        <input type="text" name="name" value="<%= name %>" class="idper"><br>
        Card Number:<br/>
        <input type="text" name="cardno" value="<%= cardno %>" class="idper"><br>
        Card Expire Date: <br/>
        <input type="text" name="cardexpdate" value="<%= cardexpdate %>" class="idper"><br>
        CVC: <br/>
        <input type="text" name="cvc" value="<%= cvc %>" class="idper"><br>
        <br>
        <input type="submit" name="submit" value="Delete The Data">
    </form>

    </div>
<br><br>
    

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>

</body>
</html>
