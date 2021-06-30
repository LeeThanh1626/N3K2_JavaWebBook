<%-- 
    Document   : cart
    Created on : Jun 28, 2021, 1:03:42 AM
    Author     : Dell 7450
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>Giỏ Hàng</h1>
        <div class="row row-cols-1 row-cols-md-5">
            <div class="col mb-4 d-flex align-items-start flex-column bd-highlight mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <img src="../AllBook/${b.pic}"/>
                    </div>
                </div>  
                <div class="p-4 bd-highlight">
                    <h5 class="card-title"> ${b.name}</h5>
                    <p class="card-title"> ${b.price}</p>
                </div>
                <div>
                    <a href="./detail.html?name=${b.name}">Chi Tiết</a>
                    <a href="./list.html">Quay Về</a>
                </div>
            </div> 
        </div>
    </body>
</html>
