<%-- 
    Document   : AddCamp
    Created on : 09-Mar-2022, 19:36:47
    Author     : Administrator
--%>

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
        <div class="container-add">
                <form action="add" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Camping Name</label>
                        <input type="text" class="form-control"  name="campName" >
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Description</label>
                        <input type="text" class="form-control" name="description">
                    </div>
                    <div class="mb-3">
                        <label class="form-check-label" for="exampleCheck1">Image Link</label>
                        <input type="text" class="form-control"  name="image">
                    </div>
                    <div class="mb-3">
                        <label class="form-check-label" for="exampleCheck1">Category</label>
                        <input type="number" class="form-control" id="exampleCheck1" name="category">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
        </div>
        
        <style>
            .container-add {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
        </style>

        <%@include file="components/footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
