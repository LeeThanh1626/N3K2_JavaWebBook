<%-- 
    Document   : listSach
    Created on : Jun 26, 2021, 10:16:03 PM
    Author     : Dell 7450
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <%@include file="./header.jsp" %> 
    <body>
        <h1>Danh Sách Book</h1>
    <td>Welcome ${email}</td>
    <hr/>
    <c:forEach var="b" items="${list}"> 
        <div class="row row-cols-1 row-cols-md-5">
            <div class="col mb-4 d-flex align-items-start flex-column bd-highlight mb-3">
                <div class="card h-100">
                    <div class="card-body">
                        <img src="../AllBook/${b.pic}"/>
                    </div>
                    <div class="p-4 bd-highlight">
                        <h5 class="card-title"> ${b.name}</h5>
                        <p class="card-title"> ${b.price}</p>
                    </div>
                    <div>
                        <a href="./detail.html?name=${b.name}">Chi Tiết</a>                                        
                    </div>
                </div> 
            </div>
        </div>
    </c:forEach>
</body>
</html>