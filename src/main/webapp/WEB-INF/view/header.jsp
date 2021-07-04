<%-- 
    Document   : header
    Created on : Jun 30, 2021, 5:14:07 PM
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
        <div class="mx-auto">
            <div class="mx-auto">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand mb-0 h1">Sách Store</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <form action="./book/listSearch.html" method="GET">
                        Tên Sách<input type="text" name="name"/>
                        
                    </form>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto justify-content-center">  
                            <li class="nav-item">
                                <a class="nav-link" href="./register.html">Đăng Ký</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="./login.html">Đăng Nhập</a>
                            </li>
                            <li>
                                <a class="nav-link">Welcome ${email}</a> 
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="container" >
    </body>
</html>