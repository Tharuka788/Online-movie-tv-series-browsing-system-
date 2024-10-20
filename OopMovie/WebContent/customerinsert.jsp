<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal - User Registration</title>
    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-image: url('images/AdobeStock_845107561_Preview.jpeg');
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
            max-width: 600px;
            margin: 80px auto; /* Increased margin to avoid overlapping with the fixed navbar */
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            
            background-image: linear-gradient(to top, #cfd9df 0%, #e2ebf0 100%);
        }

        h1 {
            text-align: center;
            color: #4a90e2;
            font-size: 2.2em;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
            font-size: 1em;
            color: #333;
        }

        input[type="text"], input[type="password"], input[type="number"] {
            padding: 12px;
            margin: 5px 0 15px;
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
</head>
<body>

    <header>
        <nav>
            <div class="logo">MOVIE HUB</div>
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
    
    <!-- Registration Form Container -->
    <div class="container">
        <h1>User Registration</h1>
        <form action="insert" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>

            <label for="phone">Phone Number</label>
            <input type="number" id="phone" name="phone" required>

            <label for="uid">User Name</label>
            <input type="text" id="uid" name="uid" required>

            <label for="psw">Password</label>
            <input type="password" id="psw" name="psw" required>

            <input type="submit" name="submit" value="Create Customer">
        </form>
    </div>
    <br>
    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>

</body>
</html>
