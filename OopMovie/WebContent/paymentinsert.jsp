<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <script src="script/myscript.js"></script>
    <title>Payment Insert</title>
    <style>
        body {
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

.main-content {
    flex: 1; /* Ensures the main content takes up the remaining space */
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
        h1.capitalize {
            text-align: center;
            margin: 20px 0;
            color: #333;
        }

        .payForm {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px auto;
            width: 80%;
            max-width: 600px;
        }

        .payForm h3 {
            margin-bottom: 10px;
            color: #007BFF;
        }

        input[type="text"], input[type="submit"] {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .photos {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .photos img {
            border-radius: 8px;
            margin: 0 10px;
            width: 200px;
            height: 150px;
            object-fit: cover;
        }


        label {
    display: block; 
    margin: 10px 0; 
    font-size: 16px; 
}

input[type="checkbox"] {
    margin-right: 10px; 
    vertical-align: middle; 
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
<br><br><br><br><br>

    <h1 align="center" class="capitalize">Add Card Details</h1>

    <div class="payForm">
        <form action="pay" method="post">

            <fieldset>
                <legend>Payment Details</legend>
            	<h4>Card Name:</h4>
            	<input type="text" id="propertyname" name="propertyname" required placeholder="Enter Name for card (e.g., Card One)">

                <h4>Customer Name</h4>
                <input type="text" id="cname" name="name" required/>

                <h4>Card Number</h4>
                <input type="text" id="cno" name="cardno" placeholder="xxxxxxxxxxxxxxxx" pattern="[0-9]{16}" required/>

                <h4>Expire Date</h4>
                <input type="text" id="expire" name="cardexpdate" placeholder="yy/mm" pattern="[0-9]{2}/[0-9]{2}" required/>

                <h4>CVC</h4>
                <input type="text" id="cvc" name="cvc" placeholder="xxx" pattern="[0-9]{3}" required/>
            </fieldset>
            


           <label>
    <input type="checkbox" id="policy" name="policy" onclick="enableButton()" > Accept Privacy Policy Terms
</label>


            <center>  <input type="submit" id="insertbtn" name="insertbtn" value="SUBMIT" disabled></center>  
        </form>
        <center>   <h3>Accepted Cards</h3></center>  
                <center>  <img class="cards" src="images/cards.png" width="40%" height="80%"></center>  
    </div>
                       
            



    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>

</body>
</html>
