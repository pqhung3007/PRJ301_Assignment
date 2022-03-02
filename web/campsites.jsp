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

    </head>
    <body>
        <h1>Our Camp Sites</h1>
        <ul>
            <c:forEach items="${categoryList}" var="C">
                <li><a href="filter-category?categoryId=${C.id}">${C.name}</a></li>
                </c:forEach>
        </ul>

        <div class="row">
            <c:forEach items="${campList}" var="cp">
                <div class="col-sm-6">
                    <div class="card">
                        <img src="${cp.imageUrl}" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h2 class="card-title">${cp.name}</h2>
                            <p class="card-text">${cp.description}.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">${cp.price}</li>
                            <li class="list-group-item">${cp.categoryId}</li>
                        </ul>
                    </div>
                </div>
            </c:forEach>
        </div>

        <nav aria-label="Page navigation example" class=" d-flex justify-content-center mt-3">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                <li class="page-item"><a class="page-link" href="campsites?page=1">1</a></li>
                <li class="page-item"><a class="page-link" href="campsites?page=2">2</a></li>
                <li class="page-item"><a class="page-link" href="campsites?page=3">3</a></li>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>


    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
