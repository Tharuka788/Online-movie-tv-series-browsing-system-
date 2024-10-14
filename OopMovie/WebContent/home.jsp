<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal</title>
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

        /* Slider */
        .slider {
            margin-top: 60px;
            display: flex;
            justify-content: center;
            overflow: hidden;
            position: relative;
            max-height: 400px;
        }

        .slides {
            display: flex;
            width: 300%;
            animation: slide 12s infinite;
        }

        .slides img {
            width: 100%;
            max-height: 400px;
            object-fit: cover;
        }

        @keyframes slide {
            0% { transform: translateX(0); }
            33% { transform: translateX(-100%); }
            66% { transform: translateX(-200%); }
            100% { transform: translateX(0); }
        }

        /* Features Section */
        .features {
            padding: 40px;
            background-color: #ecf0f1;
        }

        .feature-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .feature-box {
            width: 30%;
            margin: 20px;
            text-align: center;
        }

        .feature-box h3 {
            margin-bottom: 10px;
        }

        /* Testimonials Section */
        .testimonials {
            padding: 40px;
            background-color: #f1c40f;
        }

        .testimonial-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .testimonial-box {
            width: 30%;
            margin: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Newsletter Section */
        .newsletter {
            padding: 40px;
            background-color: #3498db;
            color: white;
            text-align: center;
        }

        .newsletter input {
            padding: 10px;
            width: 250px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
        }

        .newsletter button {
            padding: 10px 20px;
            background-color: #2c3e50;
            color: white;
            border: none;
            border-radius: 5px;
        }

        /* Contact Us Section */
        .contact-us {
            padding: 40px;
            background-color: #ecf0f1;
        }

        .contact-us form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .contact-us input, .contact-us textarea {
            width: 100%;
            max-width: 500px;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .contact-us button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
        }

        /* Footer */
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 20px;
        }

        footer .social-links a {
            margin: 0 10px;
            color: white;
            text-decoration: none;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .feature-box, .testimonial-box {
                width: 100%;
                margin: 10px 0;
            }

            .nav-links {
                display: none;
            }

            .burger {
                display: block;
            }
        }

    </style>
</head>
<body>
    <header>
        <nav>
            <div class="logo">MoviePortal</div>
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

    <section class="slider">
        <div class="slides">
            <img src="https://wallpapercave.com/dwp2x/wp10615933.jpg" alt="Movie 1">
            <img src="https://wallpapercave.com/dwp2x/wp10615933.jpg" alt="Movie 2">
            <img src="https://wallpapercave.com/dwp2x/wp10615933.jpg" alt="TV Show 1">
        </div>
    </section>

    <section class="features">
        <h2>Our Features</h2>
        <div class="feature-container">
            <div class="feature-box">
                <h3>Latest Movies</h3>
                <p>Watch the latest releases in high quality.</p>
            </div>
            <div class="feature-box">
                <h3>Trending TV Shows</h3>
                <p>Stay updated with the most popular TV shows.</p>
            </div>
            <div class="feature-box">
                <h3>User Reviews</h3>
                <p>See what others are saying about your favorite shows.</p>
            </div>
        </div>
    </section>

    <section class="testimonials">
        <h2>What Our Users Say</h2>
        <div class="testimonial-container">
            <div class="testimonial-box">
                <p>"Great selection of movies and shows!" - John</p>
            </div>
            <div class="testimonial-box">
                <p>"Love the easy navigation and modern design!" - Sarah</p>
            </div>
            <div class="testimonial-box">
                <p>"I always find something to watch here." - Alex</p>
            </div>
        </div>
    </section>

    <section class="newsletter">
        <h2>Subscribe to Our Newsletter</h2>
        <form action="#">
            <input type="email" placeholder="Enter your email" required>
            <button type="submit">Subscribe</button>
        </form>
    </section>

    <section class="contact-us">
        <h2>Contact Us</h2>
        <form action="#">
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </section>

    <footer>
        <p>&copy; 2024 MoviePortal. All rights reserved.</p>
        <div class="social-links">
            <a href="#">Facebook</a>
            <a href="#">Instagram</a>
            <a href="#">Twitter</a>
        </div>
    </footer>

</body>
</html>
