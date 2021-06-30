<%-- 
    Document   : editi
    Created on : Jun 27, 2021, 9:23:52 PM
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
       
        <h1>Thông Tin Sách!</h1>
        <form action="./save.html" method="POST">
            Tên Sách<input type="text" name="name" value="${b.name}"/> <br/>
            Giá Tiền: <input type="text" name="price" value="${b.price}"/> 
            <br/>
            Hình Ảnh:<div>
                <img name="pic" src="../AllBook/${b.pic}"/>
                <img name="pic2" src="../AllBook/${b.pic2}"/>
                <img name="pic3" src="../AllBook/${b.pic3}"/>
            </div>
            <br/>
            Nội Dung: 
            <div>
                <textarea type="text" name="content" rows="10" cols ="90">${b.content}</textarea>
            </div><br/>
            Classify:  <input type="text" name="classify" value="${b.classify}"/> <br/>
            <input type="submit" value="Cap Nhat"/>
        </form>
    </body>
</html>
