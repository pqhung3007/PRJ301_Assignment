<%-- 
    Document   : navBar.jsp
    Created on : 02-Mar-2022, 21:24:32
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container-fluid mx-3 ">
        <a class="navbar-brand" href="index.jsp">Camping Paradise</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse  d-flex justify-content-between" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="campsites">Camp Sites</a>
                </li>
            </ul>

            <form action="search" class="d-flex">
                <input class="form-control me-2" type="search" name="keyword" placeholder="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>

            <div class="d-flex my-2">
                <a class="btn btn-outline-dark" href="book">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.book.size()}</span>
                </a>
                <button class="btn btn-outline-primary ms-lg-2">Login</button>
            </div>
        </div>

    </div>
</nav>
