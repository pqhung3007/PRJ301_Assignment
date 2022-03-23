<%-- 
    Document   : dashboard
    Created on : 21-Mar-2022, 10:17:50
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="css/campsites.css">
        <link rel="shortcut icon" type="image/png" href="assets/images/camping.png">
        <title>Dashboard</title>
        <%@include file="components/navBar.jsp" %>
    </head>
    <style>
        body {
            width: 70%;
            margin: 10rem auto 0;
        }
    </style>
    <body>
        <h1 style="margin-bottom: 2rem">Hello Admin, manage the data here</h1>
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        Campsites
                    </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <table>
                        <thead>
                            <tr>
                                <th>CampID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Description</th>
                                <th>Image URL</th>
                                <th>Category</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${campList}" var="cp">
                                <tr>
                                    <td>${cp.id}</td>
                                    <td>${cp.name}</td>
                                    <td>${cp.price}$</td>
                                    <td>${cp.description}</td>
                                    <td>
                                        <img src="${cp.imageUrl}" style="width: 100px" height="100px">
                                    </td>
                                    <td>${cp.categoryId}</td>
                                    <td style="display: flex">
                                        <a href="admin/update?campId=${cp.id}" class="btn btn-warning">
                                            <i class="fa-solid fa-pen"></i>
                                            </a>
                                        <a href="admin/delete?campId=${cp.id}" class="btn btn-danger" onclick="showAlert(${cp.id})">
                                            <i class="fa-solid fa-trash"></i>
                                            </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        Reservations
                    </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <table>
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Total</th>
                                <th>Note</th>
                                <th>Created Date</th>
                                <th>CustomerID</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${reList}" var="r">
                                <tr>
                                    <td>${r.id}</td>
                                    <td>${r.totalPrice}</td>
                                    <td>${r.note}</td>
                                    <td>${r.createdDate}</td>
                                    <td>${r.customerId}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                        Reservation Details
                    </button>
                </h2>
                <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                    <table>
                        <thead>
                            <tr>
                                <th>Reservation ID</th>
                                <th>Camp Booked</th>
                                <th>Camp Price</th>
                                <th>Number of Person</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${rdList}" var="rd">
                                <tr>
                                    <td>${rd.reservationId}</td>
                                    <td>${rd.campName}</td>
                                    <td>${rd.campPrice}</td>
                                    <td>${rd.numberOfPerson}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>    
            </div>

            <a href="admin/add" class="btn btn-success mt-5">
                <i class="fa-solid fa-circle-plus"></i>
                Add New Camp</a>

            <script>
                function showAlert(id) {
                    let option = confirm("Do you want to delete this camp?")
                    if (option === true) {
                        window.location.href = 'admin/delete?campId=' + id;
                    }
                }
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://kit.fontawesome.com/3a6c73e27c.js" crossorigin="anonymous"></script>
    </body>
</html>
