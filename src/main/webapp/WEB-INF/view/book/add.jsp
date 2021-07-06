<%-- 
    Document   : add
    Created on : Jun 28, 2021, 12:13:23 AM
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
    <%@include file="./header.jsp" %> 
    <body>
        <h1>Thông Tin Sách Cần Thêm!</h1>

        <form action="./upload.html" method="POST" enctype="multipart/form-data">
            <input hidden="id" type="text" name="id" value="0">
            Tên Sách<input type="text" name="name"/> <br/>
            Giá Tiền: <input type="text" name="price"/> 
            <br/>
            Hình Ảnh: <br/>  
            Image1:<input type="file" id="pic" name="pic">
            <br/>
            Image2:<input type="file" id="pic2" name="pic2">
            <br/>
            Image3:<input type="file" id="pic3" name="pic3">
            <br/> 
            Nội Dung: 
            <div>
                <textarea type="text" name="content" rows="10" cols ="90"></textarea>
            </div><br/>
            <input type="submit" value="Cap Nhat"/>
        </form>
    </form>
</body>

</html>
