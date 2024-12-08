<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Submissions</title>
</head>
<body>
    <h2>Submissions for Assignment: ${assignment.title}</h2>
    <table border="1">
        <tr>
            <th>Student Name</th>
            <th>File</th>
            <th>Submission Date</th>
        </tr>
        <c:forEach var="submission" items="${submissions}">
            <tr>
                <td>${submission.student.name}</td>
                <td><a href="/teacher/download-submission?submissionId=${submission.id}">Download</a></td>
                <td>${submission.submissionDate}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
