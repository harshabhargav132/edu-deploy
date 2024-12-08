<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
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
            background-color: #dc3545;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #c82333;
        }

        /* Centered content section */
        .content {
            text-align: center;
            margin-top: 30px;
        }

        /* Button styling */
        button {
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Link wrapping the buttons */
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <!-- Include the teacher-navbar -->
    <jsp:include page="teacher-navbar.jsp" />

    

    <!-- Welcome Section -->
    <h2>Welcome, ${teacher.name}!</h2>
    <p>Course: ${teacher.course}</p>
    <p>Email: ${teacher.email}</p>
    <p>Contact: ${teacher.contact}</p>

    
</body>
</html>
