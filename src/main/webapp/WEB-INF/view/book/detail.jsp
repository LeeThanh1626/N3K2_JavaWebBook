<%-- 
    Document   : edit
    Created on : Jun 26, 2021, 11:20:33 PM
    Author     : Dell 7450
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="./AllBook/css/detail.css">
    </head>
    <body>
        <header>
            <%@include file="./header.jsp" %>
        </header>
        <section>
            <h1>Thông tin chi tiết</h1>
            <div class="grid-item">
                <div class="card">
                    <img class="card-img" src="./AllBook/${b.pic}" alt="">
                    <img class="card-img" src="./AllBook/${b.pic2}"/>
                    <img class="card-img" src="./AllBook/${b.pic3}"/>
                </div>
                 <div class="card-content">
                        <h1 class="card-header"> ${b.name}</h1>
                        <p class="card-text">${b.price}<span>VND</span></p>
                        <p class="card-text"> ${b.content}</p>

                        <a href="./addcart.html?id=${b.id}" onclick="return confirm('Sản phẩm đã được thêm vào giỏ hàng')" class="card-btn">Thêm vào giỏ hàng<span>&rarr;</span></a>

                    </div>
            </div>
        </section>
        <footer>
            <%@include file="../footer.jsp" %>
        </footer>
    </body>

</html>
