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
            <h1>Hello World!</h1>
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="${camp.imageUrl}" alt="..." /></div>
                    <div class="col-md-6">
                        <form action="book">
                            <h1 class="display-5 fw-bolder">${camp.name}</h1>
                            <div class="fs-5 mb-5">
                                <span>${camp.price}</span>
                            </div>
                            <p class="lead">${camp.description}</p>
                            <div class="d-flex my-2">
                                <h3>Number of Person:</h3>
                                <input name="person" class="form-control text-center me-3" 
                                       id="inputQuantity" type="number" value="1" style="max-width: 3rem" />
                            </div>
                            <a class="btn btn-outline-success flex-shrink-0" type="button" href="add-to-booking?campId=${camp.id}">
                                Book this camp
                            </a>
                        </form> 
                    </div>
                </div>
            </div>
        </section>
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Other Camp Sites</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach begin="9" end="12" var="cp" items="${campList}">
                        <div class="col mb-5">
                            <div class="card h-100">
                                <!-- Product image-->
                                <img class="card-img-top" src="${cp.imageUrl}" alt="..." />
                                <!-- Product details-->
                                <div class="card-body p-4">
                                    <div class="text-center">
                                        <!-- Product name-->
                                        <h5 class="fw-bolder">${cp.name}</h5>
                                        <!-- Product price-->
                                        ${cp.price}$
                                    </div>
                                </div>
                                <!-- Product actions-->
                                <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                    <div class="text-center">
                                        <a class="btn btn-outline-dark mt-auto" href="camp?campId=${cp.id}">View Camp</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>

        <%@include file="components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
