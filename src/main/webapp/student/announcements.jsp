<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Announcements</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
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

        tr:hover {
            background-color: #e0e0e0;
        }
    </style>
</head>
<body>
<nav style="background-color: #343a40; padding: 10px; display: flex; justify-content: center; align-items: center; gap: 20px;">
    <a href="/student/announcements" style="color: white; text-decoration: none; font-size: 16px; font-weight: bold;">View Announcements</a>
    <a href="/student/student-login" style="color: white; text-decoration: none; font-size: 16px; font-weight: bold; background-color: #ff4d4d; padding: 5px 15px; border-radius: 5px;">Logout</a>
</nav>

<h2>Upcoming Announcements</h2>

<!-- Search Form -->
<div class="search-container">
    <form method="get" action="">
        <input type="text" name="searchTitle" placeholder="Search by Title..." value="${param.searchTitle}">
        <button type="submit">Search</button>
    </form>
</div>

<!-- Display the list of announcements for students -->
<table>
    <thead>
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Deadline</th>
            <th>Teacher Id</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="announcement" items="${announcements}">
            <!-- Filtering Logic -->
            <c:if test="${empty param.searchTitle || announcement.title.toLowerCase().contains(param.searchTitle.toLowerCase())}">
                <tr>
                    <td>${announcement.title}</td>
                    <td>${announcement.description}</td>
                    <td>${announcement.deadline}</td>
                    <td>${announcement.id}</td>
                </tr>
            </c:if>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
