<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css"> <!-- Ensure the path is correct -->
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('/images/image3.jpg') no-repeat center center fixed; /* Background image */
            background-size: cover; /* Cover the entire page */
        }

        /* Navbar Style */
        nav {
            background-color: #2c3e50;
            padding: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        nav a {
            color: white;
            margin: 0 20px;
            text-decoration: none;
            font-size: 16px;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Header Style */
        header {
            text-align: center;
            margin-top: 60px;
            padding: 10px;
        }

        header h1 {
            color: #2c3e50;
            font-size: 30px;
        }

        /* Section Style */
        section {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            opacity: 0.9;
        }

        section h2 {
            color: #3498db;
            font-size: 24px;
            margin-bottom: 10px;
        }

        section p {
            color: #2c3e50;
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 15px;
        }

        .success-message {
            color: green;
            font-size: 16px;
            margin-top: 10px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
        }

        input, textarea {
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            width: 100%;
        }

        input:focus, textarea:focus {
            border-color: #3498db;
            outline: none;
            background-color: #f9f9f9;
        }

        button {
            padding: 12px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        button:hover {
            background-color: #2980b9;
        }

        footer {
            text-align: center;
            padding: 10px;
            background-color: #2c3e50;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }

        .map-container {
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />

    <!-- Header Section -->
    <header>
        <h1>Contact Us</h1>
    </header>

    <!-- Contact Us Section -->
    <section>
        <h2>We'd love to hear from you!</h2>
        <p>If you have any questions or concerns, feel free to reach out to us by filling out the form below. We'll get back to you as soon as possible.</p>

        <!-- Success Message -->
        <p class="success-message">${success}</p> <!-- Display success message -->

        <!-- Contact Form -->
        <form action="/contact/submit" method="post">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Your Message:</label>
            <textarea id="message" name="message" rows="4" required></textarea>

            <button type="submit">Submit</button>
        </form>
    </section>

    <!-- Google Map Section -->
    <section>
        <h2>Our Location</h2>
        <p>Find us here or drop a message through the form above.</p>
        <div class="map-container">
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.8354345093774!2d144.95565131531575!3d-37.81733297975144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf4c9b8b8a92ee15!2sVictoria!5e0!3m2!1sen!2sau!4v1605210103311!5m2!1sen!2sau" 
                width="100%" 
                height="400" 
                style="border:0;" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>
        </div>
    </section>

    <!-- World Map Section -->
    <section>
        <h2>Global Presence</h2>
        <p>Our services are accessible worldwide. Here's a quick look at our global footprint.</p>
        <div class="map-container">
            <img src="/images/worldmap.jpg" alt="World Map" style="width: 100%; height: auto;">
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 EDU-TRACKING. All rights reserved.</p>
    </footer>
</body>
</html>
