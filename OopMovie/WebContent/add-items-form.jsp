<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie & TV Series Portal - Add Movie</title>
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
            max-width: 600px;
            margin: 80px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
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

        input[type="text"], input[type="file"], input[type="password"] {
            padding: 12px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
            width: calc(100% - 26px); /* Adjusted for padding and border */
        }

        input[type="submit"], button {
            background-color: #4a90e2;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover, button:hover {
            background-color: #357abd;
        }

        img#selectedImage {
            max-width: 300px;
            margin-top: 20px;
            display: none;
            border-radius: 5px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
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

<body>
<div class="container">

    <form class="add-items-form" action="Iteminsert" method="post" id="items_form">

            <!-- Form Name -->
            <center><h1>Add Movie</h1></center>
            
            <!-- Item Name input -->
            <div class="form-group">
                <label for="itemName">Movie Name</label>
                <input type="text" name="itemName" class="form-control" id="itemName" placeholder="Item Name">
                <span id="itemNameError" class="text-danger"></span>
            </div>
            
            <!-- Description input -->
            <div class="form-group">
                <label for="description">Movie Description</label>
                <input type="text" name="description" class="form-control" id="description" placeholder="Description">
                <span id="descriptionError" class="text-danger"></span>
            </div>
            
            <!-- Image input -->
            <div class="form-group">
                <label for="itemImage">Movie Image</label>
                <input type="file" name="itemImage" class="form-control-file" id="itemImage" accept="image/jpeg, image/png, image/jpg">
            </div>
            
            <!-- Add an empty image element to display the selected image -->
            <img id="selectedImage" src="#" alt="Selected Image">
            
            <!-- JavaScript for itemImage validation -->
            <script>
                // Get the file input element
                var itemImageInput = document.getElementById("itemImage");
            
                // Get the image element
                var selectedImage = document.getElementById("selectedImage");
            
                // Add an event listener to the file input element
                itemImageInput.addEventListener("change", function () {
                    var file = itemImageInput.files[0];
            
                    if (file) {
                        // Create a FileReader object
                        var reader = new FileReader();
            
                        // Set an event listener to update the selected image when the file is loaded
                        reader.onload = function (e) {
                            selectedImage.src = e.target.result;
                            selectedImage.style.display = "block"; // Show the selected image
                        };
            
                        // Read the selected file as a data URL
                        reader.readAsDataURL(file);
                    } else {
                        // If no file is selected, hide the selected image
                        selectedImage.style.display = "none";
                    }
                });
            </script>
            
            <!-- Price input -->
            <div class="form-group">
                <label for="price">Selling Price</label>
                <input type="text" name="price" class="form-control" id="price" placeholder="Price">
                <span id="priceError" class="text-danger"></span>
            </div>
            
            <!-- JavaScript for form validation -->
            <script>
                var form = document.querySelector(".add-items-form");
                var itemNameInput = document.getElementById("itemName");
                var descriptionInput = document.getElementById("description");
                var priceInput = document.getElementById("price");
            
                form.addEventListener("submit", function (event) {
                    var isValid = true;
            
                    // Clear previous error messages
                    document.getElementById("itemNameError").textContent = "";
                    document.getElementById("descriptionError").textContent = "";
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

            <!-- Button -->
            <div class="form-group">
                <button type="button" class="btn btn-secondary" onclick="history.back();">Back</button>
                <button type="submit" class="btn btn-primary upload">Submit</button>
            </div>
    </form>
</div>
</body>

    <!-- Footer -->
    <div class="footer">
        &copy; 2024 Movie & TV Series Portal. All rights reserved.
    </div>

</html>
