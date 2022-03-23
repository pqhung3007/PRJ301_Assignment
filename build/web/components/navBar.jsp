<%-- 
    Document   : navBar.jsp
    Created on : 02-Mar-2022, 21:24:32
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container-fluid mx-3 ">
        <a class="navbar-brand" href="home">Camping Paradise</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  d-flex justify-content-between" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="campsites">Camp Sites</a>
                </li>
            </ul>

            <form action="search" class="d-flex">
                <input class="form-control me-2" type="search" name="keyword" placeholder="Search for campsite">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

            <div class="d-flex my-2">
                <a class="btn btn-outline-dark" href="book">
                    <i class="bi-cart-fill me-1"></i>
                    Your Booking
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.book.size()}</span>
                </a>
                <c:choose>
                    <c:when test="${sessionScope.account != null}">
                        <button class="btn btn-outline-primary ms-lg-2">${sessionScope.account.displayName}</button>
                        <a href="logout" class="btn btn-outline-primary ms-lg-2">Logout</a>
                    </c:when>
                    <c:otherwise>
                        <a href="login" class="btn btn-outline-primary ms-lg-2">Login</a>
                        <a href="signup" class="btn btn-outline-success ms-lg-2">Signup</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

    </div>
</nav>
                
                <style>
                    .btn {
                        transition: all 0.3s;
                    }
                </style>
