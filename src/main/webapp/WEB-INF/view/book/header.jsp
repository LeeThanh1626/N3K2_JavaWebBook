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
        <link rel="stylesheet" href="./AllBook/css/header1.css">
    </head>
    <body style="overflow-y: scroll;
          overflow-x: hidden;">
        <header>
            <div class="container-flux">
                <a href="list.html"><img class="img" src="./AllBook/logo.svg" alt="" ></a>
                <form action="listSearch.html" method="GET">
                    <div class="group">
                        <input type="search" placeholder="Tìm kiếm sách" name="name"/>
                        <button title="Tìm sách" class="search-magnifier btn" type="submit">Tìm sách</button>
                    </div>
                </form>
                <div class="login">
                    <a id="a" >Welcome ${email}</a> 
                    <a id="a" href="./logout.html">Đăng Xuất</a>
                </div>
            </div>
        </header>
        <div class="topnav">

            <a class="active"  href="list.html">Tất cả sản phẩm</a>

            <a  href="add.html">Thêm Sách</a>

            <a  href="./NapTien.html">Nạp Tiền</a>

            <a href="./TrangCaNhan.html">Trang Cá Nhân</a>
            <div class="right">
                
                    
                
                <a  href="listcart.html"><img style="width: 20px;height: 20px;" src="./AllBook/shopping-cart.svg"> Giỏ hàng</a>
            </div>
        </div>



    </body>
</html>
