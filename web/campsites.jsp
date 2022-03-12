<%-- 
    Document   : campsites.jsp
    Created on : 27-Feb-2022, 10:08:10
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Camp Sites</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="css/campsites.css">
        <link rel="shortcut icon" type="image/png" href="assets/images/camping.png">
    </head>
    <body>
        <%@include file="components/navBar.jsp" %>
        <div class="container camp-container">
            <h1>Our Camp Sites</h1>
            <a href="add">Add New Camp</a>
            <ul class="categories">
                <c:forEach items="${sessionScope.categoryList}" var="C">
                    <li><a href="filter-category?categoryId=${C.id}">${C.name}</a></li>
                    </c:forEach>
            </ul>

            <div class="row justify-content-center">

                <c:choose>
                    <c:when test="${campList == null || campList.size() == 0}">
                        <h1>Cannot find any camp</h1>
                    </c:when>
                    <c:otherwise>
                        <nav aria-label="Page navigation example" class=" d-flex justify-content-center mt-3">
                            <ul class="pagination">
                                <li class="page-item ${page lt 1 ? "disabled" : ""}">
                                    <a class="page-link" href="campsites?page=${page-1}">Previous</a>
                                </li>
                                <c:forEach begin="1" end="${totalPages}" var="i">
                                    <li class="page-item ${i== page ? "active":""}">
                                        <a class="page-link" href="campsites?page=${i}">${i}</a>
                                    </li>
                                </c:forEach>
                                <li class="page-item ${page gt totalPages ? "disabled" : ""}">
                                    <a class="page-link" href="campsites?page=${page+1}">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </c:otherwise>
                </c:choose>

                <div class="row">
                    <c:forEach items="${campList}" var="cp">
                        <div class="col-sm-6 mb-5">
                            <div class="card">
                                <img src="${cp.imageUrl}" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h2 class="card-title">${cp.name}</h2>
                                    <p class="card-text">${cp.description}.</p>
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">Price per person: ${cp.price}$</li>
                                        <li class="list-group-item">${cp.categoryId}</li>
                                    </ul>
                                        <a href="camp?campId=${cp.id}" class="mt-4 btn btn-primary">Explore</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <%@include file="components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
