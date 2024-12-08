<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EDU-TRACKING</title>
    <link rel="stylesheet" type="text/css" href="/css/styles.css"> <!-- Assuming correct path -->
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Carousel Styles */
        .carousel {
            position: relative;
            width: 100%;
            height: 100vh; /* Full screen height */
            overflow: hidden;
        }

        .carousel-item {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-size: cover;
            background-position: center;
            transition: opacity 1s ease;
        }

        .carousel-item.active {
            opacity: 1;
        }

        .carousel-item:not(.active) {
            opacity: 0;
        }

        /* Main Content Styles */
        .main-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            max-width: 800px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }

        .main-content h1 {
            font-size: 36px;
            color: #3498db;
            margin-bottom: 20px;
        }

        .main-content p {
            font-size: 18px;
            color: #555;
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

        /* Footer Style */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #2c3e50;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
   
    <!-- Navbar -->
    <jsp:include page="navbar.jsp" />

    <!-- Combined Content (Carousel and Main Content) -->
    <div class="carousel">
        <div class="carousel-item active" style="background-image: url('<c:url value="/images/bgimage.jpg"/>');"></div>
        <div class="carousel-item" style="background-image: url('<c:url value="/images/image2.jpg"/>');"></div>
        <div class="carousel-item" style="background-image: url('<c:url value="/images/image3.jpg"/>');"></div>
        <div class="carousel-item" style="background-image: url('<c:url value="/images/image4.jpg"/>');"></div>
        <div class="carousel-item" style="background-image: url('<c:url value="/images/image5.jpg"/>');"></div>

        <!-- Main Content (Centered and Overlaid on Carousel) -->
        <div class="main-content">
            <h1>Welcome to EDU-TRACKING</h1>
            <p>Your one-stop solution for managing education processes efficiently.</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 EDU-TRACKING. All rights reserved.</p>
    </footer>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            var currentIndex = 0;
            var items = $('.carousel-item');
            var totalItems = items.length;

            function showNextItem() {
                items.eq(currentIndex).removeClass('active');
                currentIndex = (currentIndex + 1) % totalItems;
                items.eq(currentIndex).addClass('active');
            }

            setInterval(showNextItem, 4000); // Change image every 4 seconds
        });
    </script>
</body>
</html>
