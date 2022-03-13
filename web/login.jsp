<%-- 
    Document   : camp
    Created on : 02-Mar-2022, 20:29:04
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/png" href="assets/images/camping.png">
        <%@include file="components/navBar.jsp" %>
        <title>Login</title>
    </head>
    <body style="padding-top: 10rem">
        <div style="width: 40%; margin: auto" class="mt-5">
                <form action="login" method="POST">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control"  name="username" >
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password">
                    </div>
                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input"  name="remember">
                        <label class="form-check-label" >Remember me</label>
                    </div>
                    <h3 class="text-danger">${error}</h3>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
        </div>
                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
