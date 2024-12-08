<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin View Messages</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        nav {
            margin-bottom: 20px;
        }

        .search-container {
            width: 80%;
            margin: 20px auto;
            display: flex;
            justify-content: flex-end;
            align-items: center;
        }

        .search-container input[type="text"] {
            width: 30%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .search-container button {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            margin-left: 10px;
            cursor: pointer;
        }

        .search-container button:hover {
            background-color: #0056b3;
        }

        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            text-align: left;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }
    </style>
</head>
<body>
    <!-- Include the admin navigation bar -->
    <jsp:include page="admin-navbar.jsp" />

    <!-- Page content -->
    <h1>Contact Messages</h1>

    <!-- Search Form -->
    <div class="search-container">
        <form method="get" action="">
            <input type="text" name="searchId" placeholder="Search by ID..." value="${param.searchId}">
            <button type="submit">Search</button>
        </form>
    </div>

    <!-- Messages Table -->
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="message" items="${messages}">
                <c:if test="${empty param.searchId || message.id == param.searchId}">
                    <tr>
                        <td>${message.id}</td>
                        <td>${message.name}</td>
                        <td>${message.email}</td>
                        <td>${message.message}</td>
                    </tr>
                </c:if>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>