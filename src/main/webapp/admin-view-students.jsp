<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        nav {
            margin-bottom: 20px;
        }

        h2 {
            text-align: center;
            margin: 20px 0;
            color: #333;
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
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <!-- Include the admin navigation bar -->
    <jsp:include page="admin-navbar.jsp" />

    <!-- Page content -->
    <h2>Student Details</h2>

    <!-- Search Form -->
    <div class="search-container">
        <form method="get" action="">
            <input type="text" name="searchName" placeholder="Search by Name..." value="${param.searchName}">
            <button type="submit">Search</button>
        </form>
    </div>

    <!-- Student Table -->
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Contact</th>
            <!-- Add other fields as required -->
        </tr>
        <c:forEach items="${students}" var="student">
            <!-- Filtering Logic -->
            <c:if test="${empty param.searchName || student.name.toLowerCase().contains(param.searchName.toLowerCase())}">
                <tr>
                    <td>${student.name}</td>
                    <td>${student.email}</td>
                    <td>${student.gender}</td>
                    <td>${student.contact}</td>
                    <!-- Add other fields as required -->
                </tr>
            </c:if>
        </c:forEach>
    </table>
</body>
</html>