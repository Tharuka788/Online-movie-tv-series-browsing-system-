<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal - Movie Update</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    
    <%
		String itemNo = request.getParameter("itemNo");
		String itemName = request.getParameter("itemName");
		String description = request.getParameter("description");
		String itemImage = request.getParameter("itemImage");
		String price = request.getParameter("price");
	%>
	
	
    <div class="container">
        <form class="add-items-form" action="updateItem" method="post" id="items_form">
            <fieldset>
                <c:forEach var="item" items="${items}">
                    <c:set var="itemImage" value="${item.itemImage}" />
                    <c:out value="${item.itemImage}" />
                </c:forEach>
    
                <legend>Update Movie</legend><br>

				<div class="form-group">
				    <label for="itemNo">Movie Number</label>
				    <input name="itemNo" id="itemNo" class="form-control" type="text" value="<%=itemNo%>" readonly>
				</div>
				
				<div class="form-group">
				    <label for="itemName">Movie Name</label>
				    <input name="itemName" id="itemName" class="form-control" type="text" value="<%=itemName%>">
				    <span id="itemNameError" class="text-danger"></span>
				</div>
				
				<div class="form-group">
				    <label for="description">Description</label>
				    <input name="description" id="description" class="form-control" type="text" value="<%=description%>">
				    <span id="descriptionError" class="text-danger"></span>
				</div>
				
				<div class="form-group item-image">
				    <label for="itemImage">Image</label>
				    <input type="file" name="itemImage" id="itemImage" class="form-control-file" accept="image/jpeg, image/png, image/jpg">
				    <!-- Add an empty image element to display the selected image -->
				    <img id="selectedImage" src="#" alt="Selected Image" style="max-width: 300px; display: none;">
				    <span id="itemImageError" class="text-danger"></span>
				</div>
				
				<!-- JavaScript for itemImage -->
				<script>
				    var itemImageInput = document.getElementById("itemImage");
				    var selectedImage = document.getElementById("selectedImage");
				
				    itemImageInput.addEventListener("change", function () {
				        var file = itemImageInput.files[0];
				
				        if (file) {
				            var reader = new FileReader();
				
				            reader.onload = function (e) {
				                selectedImage.src = e.target.result;
				                selectedImage.style.display = "block";
				            };
				
				            reader.readAsDataURL(file);
				        } else {
				            selectedImage.style.display = "none";
				        }
				    });
				</script>
				
				<div class="form-group">
				    <label for="price">Price</label>
				    <input name="price" id="price" class="form-control" type="text" value="<%=price%>">
				    <span id="priceError" class="text-danger"></span>
				</div>
				
				<!-- JavaScript for form validation -->
				<script>
				    var form = document.getElementById("items_form");
				    var itemNameInput = document.getElementById("itemName");
				    var descriptionInput = document.getElementById("description");
				    var priceInput = document.getElementById("price");
				
				    form.addEventListener("submit", function (event) {
				        var isValid = true;
				
				        // Clear previous error messages
				        document.getElementById("itemNameError").textContent = "";
				        document.getElementById("descriptionError").textContent = "";
				        document.getElementById("itemImageError").textContent = "";
				        document.getElementById("priceError").textContent = "";
				
				        // Validate item name
				        if (itemNameInput.value.trim() === "") {
				            isValid = false;
				            document.getElementById("itemNameError").textContent = "Item name is required";
				        }
				
				        // Validate description
				        if (descriptionInput.value.trim() === "") {
				            isValid = false;
				            document.getElementById("descriptionError").textContent = "Description is required";
				        }
				
				        // Validate image (optional)
				        if (itemImageInput.files.length === 0) {
				            // You can add more specific validation here, e.g., checking for file type and size.
				            isValid = false;
				            document.getElementById("itemImageError").textContent = "Image is required";
				        }
				
				        // Validate price (numeric and positive)
				        var price = parseFloat(priceInput.value);
				        if (isNaN(price) || price <= 0) {
				            isValid = false;
				            document.getElementById("priceError").textContent = "Price must be a positive number";
				        }
				
				        if (!isValid) {
				            event.preventDefault(); // Prevent form submission if there are validation errors
				        }
				    });
				</script>

    
                <div class="form-group submit-btn">
                	<button type="button" class="btn btn-secondary" onclick="history.back();">Back</button>
                    <button type="submit" class="btn btn-primary">Update My Data</button>
                </div>
            </fieldset>
        </form>
    </div>
    
</body>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>

</html>
