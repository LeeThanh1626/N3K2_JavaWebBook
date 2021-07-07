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
        <link rel="stylesheet" href="./AllBook/css/index.css">
    </head>
    <body>

        <header>
             <%@include file="./header.jsp" %> 
        </header>
        <section>
            <div class="addBook">
                <h1>Thông Tin Sách Cần Thêm</h1>
                <form id="addBook" action="./upload.html" method="POST" enctype="multipart/form-data">
                    <div>
                        <label ><b>Tên Sách: </b></label>
                        <input type="text" placeholder="Nhập tên sách" name="name" required>
                    </div>
                    <div >
                        <label ><b>Giá Tiền:  </b></label>
                        <input type="text" placeholder="Nhập giá tiền" name="price" required>
                    </div>
                   Hình Ảnh: <br/>  
                    Image1:<input type="file" id="pic" name="pic">
                    <br/>
                    Image2:<input type="file" id="pic2" name="pic2">
                    <br/>
                    Image3:<input type="file" id="pic3" name="pic3">
                    <br/> 
                    <div>
                        <label ><b>Nội Dung: </b></label>
                        <textarea type="text" name="content" rows="10" cols ="80"></textarea>
                    </div>
                    <div>
                        <button style="margin-left: 250px" type="submit">Cập nhật</button>
                    </div>  
                    
                </form>
            </div>
        </section>
        <footer style="margin-top: 100px">
            <%@include file="../footer.jsp" %>
        </footer>
    </body>
</html>
