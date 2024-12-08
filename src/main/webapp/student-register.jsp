<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>"> <!-- Ensure the path to the CSS is correct -->
    <style>
        /* Global Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('<c:url value="/images/image4.jpg"/>') no-repeat center center fixed;
            background-size: cover;
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

        /* Header and Main Content */
        header, .main-content {
            text-align: center;
            margin: 50px;
        }

        /* Registration Form Section */
        .registration-form {
            max-width: 800px;
            margin: 20px auto; /* Reduced the margin for closer alignment */
            padding: 30px;
            background-color: #ffffff;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            gap: 20px;
        }

        h2 {
            color: #2c3e50;
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 0; /* Removed any margin from the table */
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: transparent; /* Removed color from th */
        }

        /* Styling input fields */
        td input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc; /* Border added */
            font-size: 16px;
            background-color: #fff; /* White background */
        }

        td input:focus {
            border-color: #3498db;
            outline: none;
            background-color: #f9f9f9; /* Slightly different color on focus */
        }

        /* Button Style */
        .btn-submit {
            padding: 12px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
            margin-top: 20px; /* Added gap above the submit button */
        }

        .btn-submit:hover {
            background-color: #2980b9;
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

        /* Remove Color from Labels */
        label {
            color: black; /* No color */
            font-size: 16px;
            display: block;
            margin-bottom: 8px;
        }
    </style>
</head>
<body>
    <!-- Include Navbar -->
    <jsp:include page="navbar.jsp" />

    <!-- Main Content (Centered) -->
    <div class="main-content">
        <header>
            <h1>Student Registration</h1>
        </header>

        <!-- Registration Form -->
        <section class="registration-form">
            <form action="/student/register" method="post">
                <table>
                    <tr>
                        <th>Username:</th>
                        <td><input type="text" name="username" id="username" required></td>
                    </tr>
                    <tr>
                        <th>Password:</th>
                        <td><input type="password" name="password" id="password" required></td>
                    </tr>
                    <tr>
                        <th>Name:</th>
                        <td><input type="text" name="name" id="name" required></td>
                    </tr>
                    <tr>
                        <th>Gender:</th>
                        <td><input type="text" name="gender" id="gender" required></td>
                    </tr>
                    <tr>
                        <th>Email:</th>
                        <td><input type="email" name="email" id="email" required></td>
                    </tr>
                    <tr>
                        <th>Contact:</th>
                        <td><input type="text" name="contact" id="contact" required></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button class="btn-submit" type="submit">Register</button>
                        </td>
                    </tr>
                </table>
            </form>
        </section>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 EDU-TRACKING. All rights reserved.</p>
    </footer>
</body>
</html>
