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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Camp Sites</h1>
        <ul>
            <c:forEach items="${categoryList}" var="C">
            <li>${C.name}</li>
            </c:forEach>
        </ul>
    </body>
</html>
