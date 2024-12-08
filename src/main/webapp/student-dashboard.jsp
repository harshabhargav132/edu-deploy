<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f8ff;
            color: #333;
        }

        /* Header styling */
        h2 {
            text-align: center;
            margin-top: 20px;
            color: #2c3e50;
        }

        p {
            text-align: center;
            font-size: 16px;
            margin: 10px;
        }

        /* Logout button styling */
        .btn-primary {
            position: absolute;
            top: 10px;
            right: 10px;
            padding: 10px 15px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Centered content section */
        .content {
            text-align: center;
            margin-top: 30px;
        }

        /* Announcements button styling */
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #28a745;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        a:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <jsp:include page="/student-navbar.jsp" />
    <!-- Welcome Section -->
    <h2>Welcome, ${student.name}!</h2>
    <p>Email: ${student.email}</p>
    <p>Contact: ${student.contact}</p>

    
</body>
</html>