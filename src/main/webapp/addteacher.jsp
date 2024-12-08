<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Teacher</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
    <!-- You can add additional meta tags or links to external resources here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
        input, select, button {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            cursor: pointer;
        }
        button.btn-success {
            background-color: #28a745;
            color: white;
        }
        button.btn-warning {
            background-color: #ffc107;
            color: white;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            padding: 10px;
            background-color: #343a40;
            color: white;
        }
    </style>
</head>
<body>

   <jsp:include page="admin-navbar.jsp" />

    <!-- Main Content Wrapper -->
    <div class="container">
        <h2 align="center">Add Teacher</h2>
        
        <!-- Form to Add Teacher -->
        <form method="POST" action="/admin/insertteacher">

            <!-- Username Field -->
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" name="username" id="username" required />
            </div>

            <!-- Password Field -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" id="password" required />
            </div>

            <!-- Full Name Field -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" class="form-control" name="name" id="name" required />
            </div>

            <!-- Gender Field -->
            <div class="form-group">
                <label for="gender">Gender</label>
                <select class="form-control" name="gender" id="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <!-- Email Field -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email" id="email" required />
            </div>

            <!-- Contact Field -->
            <div class="form-group">
                <label for="contact">Contact</label>
                <input type="text" class="form-control" name="contact" id="contact" required />
            </div>

            <!-- Course Field -->
            <div class="form-group">
                <label for="course">Course</label>
                <input type="text" class="form-control" name="course" id="course" required />
            </div>

            <!-- Buttons -->
            <button type="submit" class="btn btn-success">Add Teacher</button>
            <button type="reset" class="btn btn-warning">Clear</button>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 EDU-TRACKING. All rights reserved.</p>
    </footer>

</body>
</html>
