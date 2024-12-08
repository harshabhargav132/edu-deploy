<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav style="background-color: #343a40; padding: 10px; display: flex; justify-content: center; align-items: center; gap: 20px;">
    <a href="teacher-dashboard" style="color: white; text-decoration: none; font-size: 16px; font-weight: bold;">Dashboard</a>
    <a href="/teacher/announcements" style="color: white; text-decoration: none; font-size: 16px; font-weight: bold;">View Announcements</a>
    <a href="/teacher/announcementForm.jsp" style="color: white; text-decoration: none; font-size: 16px; font-weight: bold;">Create Announcement</a>
    <a href="/teacher/teacher-login" style="color: white; text-decoration: none; font-size: 16px; font-weight: bold; background-color: #ff4d4d; padding: 5px 15px; border-radius: 5px;">Logout</a>
</nav>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
<h2>Create a New Announcement</h2>

<!-- Form to add a new announcement -->
<form action="/teacher/addAnnouncement" method="post">
    <label for="title">Announcement Title:</label>
    <input type="text" name="title" id="title" placeholder="Announcement Title" required><br>

    <label for="description">Announcement Description:</label>
    <textarea name="description" id="description" placeholder="Announcement Description" required></textarea><br>

    <label for="deadline">Deadline:</label>
    <input type="date" name="deadline" id="deadline" required><br>

    <button type="submit">Submit Announcement</button>
</form>

<style>
    /* Global Styles */
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

    form {
        width: 300px;
        margin: 0 auto;
        padding: 20px;
        background: #ffffff;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        text-align: center;
    }

    label, input, textarea, button {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        display: inline-block;
        border: 1px solid #ddd;
        box-sizing: border-box;
    }

    input[type="text"], input[type="date"], textarea {
        border-radius: 4px;
    }

    button {
        background-color: #3498db;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 4px;
    }

    button:hover {
        background-color: #2980b9;
    }
</style>
