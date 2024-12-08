<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Registration</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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
            max-width: 600px; /* Increased width */
            margin: 50px auto;
            padding: 30px; /* Increased padding */
            background-color: white;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Slightly stronger shadow */
            border-radius: 10px; /* Rounded corners */
            text-align: center;
            flex: 1;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        /* Form Style */
        form {
            display: flex;
            flex-direction: column;
            margin: auto;
        }

        label {
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            padding: 12px; /* Increased padding for inputs */
            margin-bottom: 20px; /* Increased spacing */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px; /* Increased font size */
        }

        button {
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px; /* Increased button font size */
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Footer Style */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #343a40;
            color: white;
            position: relative;
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

    <!-- Main Content -->
    <div class="main-content">
        <h2>Teacher Registration</h2>
        <form action="/teacher/register" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>
            
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" required>
            
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required>
            
            <label for="gender">Gender:</label>
            <input type="text" name="gender" id="gender" required>
            
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>
            
            <label for="contact">Contact:</label>
            <input type="text" name="contact" id="contact" required>
            
            <label for="course">Course:</label>
            <input type="text" name="course" id="course" required>
            
            <button type="submit">Register</button>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 EDU-TRACKING. All rights reserved.</p>
    </footer>
</body>
</html>
