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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="components/navBar.jsp" %>
        <section class="py-5">
            <div class="container" style="min-height: 100vh">
                <h2>Your Booking:</h2>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Price</th>
                            <th scope="col">Number of Person</th>
                            <th scope="col">Total</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${book}" var="b">
                        <tr>
                            <td>${b.value.camp.name}</td>
                            <td>
                                <img src="${b.value.camp.imageUrl}" width="100px" height="100px">
                            </td>
                            <td>${b.value.camp.price}</td>
                            <td>${b.value.numOfPerson}</td>
                            <td>${b.value.camp.price * b.value.numOfPerson}</td>
                            <td>
                                <i class="bi bi-trash3"></i>
                                <a type="button" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>


        <%@include file="components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
