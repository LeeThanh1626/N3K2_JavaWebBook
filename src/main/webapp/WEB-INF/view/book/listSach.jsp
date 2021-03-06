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
        <link rel="stylesheet" href="./AllBook/css/listSach.css">
    </head>
    <body class="bodyy">
        <header><%@include file="header.jsp" %></header>
        <section>
            <c:forEach var="b" items="${list}"> 
                <div class="grid-item">
                    <div class="card">
                        <img class="card-img" src="./AllBook/${b.pic}" alt="">
                        <div class="card-content">
                            <h1 class="card-header"> ${b.name}</h1>
                            <p class="card-text">${b.price}<span>VND</span></p>
                            <a href="./detail.html?id=${b.id}" class="card-btn">Chi tiết<span>&rarr;</span></a>

                            <a href="./edit.html?id=${b.id}" class="card-btn">Sửa<span>&rarr;</span></a>

                            <a href="./delete.html?id=${b.id}" onclick="return confirm('Bạn có chắc muốn xóa sản phẩm?')" class="card-btn">Xóa<span>&rarr;</span></a>

                            <a href="./addcart.html?id=${b.id}" onclick="return confirm('Sản phẩm đã được thêm vào giỏ hàng')" class="card-btn">Thêm vào giỏ hàng<span>&rarr;</span></a>

                        </div>
                    </div>
                </div>

            </c:forEach>
        </section>
        <footer><%@include file="../footer.jsp" %></footer>
    </body>

</html>
