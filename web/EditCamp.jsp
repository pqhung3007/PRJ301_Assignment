<%-- 
    Document   : EditCamp
    Created on : 17-Mar-2022, 15:48:06
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="css/style.css">
        <title>Edit Campsite</title>
    </head>
    <body>
           <%@include file="components/navBar.jsp" %>
        <div class="container-add">
            <h1 class="mb-3">Edit Campsite</h1>
            
            <form action="update" method="POST">
                <input type="hidden" name="id" value="${camp.id}">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Camping Name</label>
                    <input type="text" class="form-control"  name="name"  value="${camp.name}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Price</label>
                    <input type="number" class="form-control"  name="price"  value="${camp.price}">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Description</label>
                    <input type="text" class="form-control" name="description" value="${camp.description}">
                </div>
                <div class="mb-3">
                    <label class="form-check-label" for="exampleCheck1">Image Link</label>
                    <input type="text" class="form-control"  name="image" value="${camp.imageUrl}">
                </div>
                <div class="mb-3">
                    <label class="form-check-label" for="exampleCheck1">Category</label>
                    <input type="number" class="form-control" name="category" value="${camp.categoryId}">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>

        <style>
            body {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
                overflow: hidden;
            }
            .container-add {
                box-shadow: 0px 2px 10px rgba(255, 255, 255, 0.2);
                padding: 20px;
                width: 650px;
                max-width: 100%;
            }
        </style>
    </body>
</html>
