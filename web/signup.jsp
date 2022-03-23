<%-- 
    Document   : signup
    Created on : 19-Mar-2022, 20:18:28
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/png" href="assets/images/camping.png">
        <link rel="stylesheet" href="css/loginout.css">
        <title>Sign Up</title>
        <%@include file="components/navBar.jsp" %>
    </head>
    <body>
        <div class="signup">
            <h1 class="mt-4 mb-5">Register and create memories with us!</h1>
            <form id="form" action="signup" method="POST">
                <div class="mb-3">
                    <label for="password" class="form-label">Your Name</label>
                    <input type="text" class="form-control" name="name" id="name">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Email</label>
                    <input type="text" class="form-control" name="email" id="email">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Phone Number</label>
                    <input type="text" class="form-control" name="phone" id="phone">
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control"  name="username" id="username">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password"id="password">
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
                <p style="color: red">${duplicated}</p>
            </form>
        </div>

        <script src="js/app.js"></script>
    </body>
</html>
