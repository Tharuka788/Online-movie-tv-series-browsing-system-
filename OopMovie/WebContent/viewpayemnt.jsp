<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Payment Handling</title>
    <style>
        body {
            background-image: url('images/view.jpg');
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

        .menubar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .contt {
            background-color: rgba(240, 245, 245, 0.9);
            width: 700px;
            border: 15px solid black;
            font-size: 16px;
            padding: 20px 12px 10px 20px;
            outline-style: double;
            outline-color: black;
            opacity: 0.9;
            margin: auto; 
            text-align: center;
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

        footer {
            background-color: rgba(0, 123, 255, 0.8);
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: auto;
        }

        .footer-container {
            display: flex;
            justify-content: space-between;
            max-width: 1170px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .col {
            flex: 1;
            margin: 0 15px;
            min-width: 200px;
        }

        footer h2 {
            margin-bottom: 10px;
        }

        footer p {
            margin: 0;
        }
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
<br><br><br><br><br>

    <div class="contt">
        <form action="view" method="post">
            <h1 align="center" class="capitalize">Payment Handling</h1><br>
            <h3>All the details are saved in the Payment Handling table.</h3>
            <h4>Payment Handling can Update/Delete these details.</h4>
            <input type="submit" name="viewbtn" value="View Payment Table">
        </form>
    </div>

    <footer>
        <div class="footer-container">
            <div class="col">
                <h2>About Us</h2>
                <p></p>
            </div>
            <div class="col">
                <h2>Find Us</h2>
                <p>Facebook: <br>Instagram: <br>Email: </p>
            </div>
            <div class="col">
                <h2>Location</h2>
                <p>No 14<br>Malabe.</p>
            </div>
            <div class="col">
                <h2>Hotline</h2>
                <p>+94 123 123 123<br>+94 456 456 456</p>
            </div>
        </div>
    </footer>
</body>
</html>
