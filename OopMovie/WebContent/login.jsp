<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal - Login</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
        	 background-image: url('images/desola-lanre-ologun-zYgV-NGZtlA-unsplash.jpg');
        background-size: cover;          /* Ensures the image covers the entire page */
        background-repeat: no-repeat;    /* Prevents the image from repeating */
        background-position: center;     /* Centers the image on the page */
        background-attachment: fixed;    /* Keeps the background fixed while scrolling */
        font-family: 'Arial', sans-serif;
        color: #333;
        margin: 0;
        padding: 0;
        box-sizing: border-box;

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

        /* Login Container Styling */
        .login-container {
            max-width: 500px;
          	margin: 80px 0 0 500px; /* Increased margin to avoid overlap with navbar */
            padding: 20px;

            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            
            background-image: linear-gradient(to top, #cfd9df 0%, #e2ebf0 100%);
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            font-size: 2em;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="text"], input[type="password"] {
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
            width: calc(100% - 26px); /* Adjusted for padding and border */
        }

        input[type="submit"] {
            background-color: #4a90e2;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
            width: 200px;
            
        }

        input[type="submit"]:hover {
            background-color: #357abd;
            
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


    <!-- Navbar -->
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
    <!-- Login Form Container -->
    <div class="login-container">
        <h1>Login</h1>
        <form action="login" method="post">
            <input type="text" name="username" placeholder="Enter your username" required>
            <input type="password" name="password" placeholder="Enter your password" required>
            <input type="submit" name="submit" value="Login">
        </form>
    </div>
<br><br><br><br><br><br><br><br>
   

</body>
</html>
