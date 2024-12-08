<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>"> <!-- Ensure the path to the CSS is correct -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('<c:url value="/images/image2.jpg"/>') no-repeat center center fixed;
            background-size: cover;
        }

        /* Navbar Style */
        nav {
            background-color: #343a40;
            padding: 10px;
            display: flex;
            justify-content: center;
        }

        nav a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Main Content Style */
        .main-content {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        /* Form Style */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        p {
            margin-top: 10px;
            font-size: 14px;
        }

        p a {
            color: #007bff;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }

        /* Footer Style */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #343a40;
            color: white;
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }

        /* CAPTCHA styling */
        .captcha-container {
            margin-bottom: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .captcha {
            font-size: 30px;
            font-weight: bold;
            padding: 10px;
            border: 2px solid #ccc;
            width: 120px;
            text-align: center;
            background-color: #f0f0f0; /* Light grey background color */
            border-radius: 4px; /* Rounded corners */
            color: #333; /* Dark text for visibility */
        }

        .captcha-input {
            width: 150px;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />

    <!-- Main Content -->
    <div class="main-content">
        <h2>Admin Login</h2>
        <form action="/admin/login" method="post" onsubmit="return validateCaptcha()">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>

            <!-- CAPTCHA Section -->
<div class="captcha-container">
    <div id="captchaDisplay" class="captcha"></div>
    <input type="text" id="captchaInput" class="captcha-input" name="captcha" required>
    <button type="button" onclick="generateCaptcha()" style="margin-left: 10px; padding: 10px; background-color: #28a745; color: white; border: none; border-radius: 4px; cursor: pointer;">Reload</button>
</div><br>


            <input type="hidden" id="captchaValue" name="captchaValue">

            <button type="submit">Login</button>
        </form>
        <p style="color:red;">${error}</p>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 EDU-TRACKING. All rights reserved.</p>
    </footer>

    <script>
        // Function to generate a random number as CAPTCHA
       function generateCaptcha() {
    const captcha = Math.floor(Math.random() * 900000) + 100000; // 6-digit random number
    document.getElementById('captchaDisplay').textContent = captcha;  // Display CAPTCHA
    document.getElementById('captchaValue').value = captcha; // Store CAPTCHA value for validation
}

        // Function to validate the CAPTCHA input
        function validateCaptcha() {
            const userCaptcha = document.getElementById('captchaInput').value;
            const correctCaptcha = document.getElementById('captchaValue').value;
            if (userCaptcha === correctCaptcha) {
                return true; // Allow form submission
            } else {
                alert("Invalid CAPTCHA. Please try again.");
                return false; // Prevent form submission
            }
        }

        // Generate CAPTCHA when the page loads
        window.onload = function() {
            generateCaptcha();
        }
    </script>
</body>
</html>
