<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }

        /* Header styling */
        h2 {
            text-align: center;
            margin-top: 20px;
            color: #2c3e50;
        }

        /* Center content */
        body > *:not(nav):not(.btn-primary) {
            text-align: center;
            margin-top: 20px;
        }

        p {
            font-size: 18px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <!-- Include the admin-navbar -->
    <jsp:include page="admin-navbar.jsp" />

    <!-- Dashboard content -->
    <h2>Welcome, admin !</h2>
    <p></p>
</body>
</html>
