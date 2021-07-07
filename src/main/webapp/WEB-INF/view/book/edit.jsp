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
        <link rel="stylesheet" href="./AllBook/css/edit.css">

    </head>

    <body>
        <header>
            <%@include file="./header.jsp" %> 
        </header>
        <section>
            <div  >
                <h1>Thông Tin Sách</h1>
                <form id="editBook" action="./upload.html" method="POST" enctype="multipart/form-data">
                    <input hidden="id" type="text" name="id" value="${b.id}">
                    <div>
                        <label ><b>Tên Sách: </b></label>
                        <input type="text" name="name" value="${b.name}" required>
                    </div>
                    <div >
                        <label ><b>Giá Tiền:  </b></label>
                        <input type="text" name="price" value="${b.price}" required>
                    </div>
                    <label ><b>Hình Ảnh:  </b></label><div>
                        <img name="pic" src="./AllBook/${b.pic}"/>
                        <img name="pic2" src="./AllBook/${b.pic2}"/>
                        <img name="pic3" src="./AllBook/${b.pic3}"/>
                    </div>
                    <div>
                        <label ><b>Nội Dung: </b></label>
                        <textarea type="text" name="content" rows="10" cols ="90">${b.content}</textarea>                    
                    </div>
                    <div>
                        <button style="margin-left: 250px" type="submit">Cập nhật</button>
                    </div>

                </form>
            </div>
        </section>

        <footer>
            <%@include file="../footer.jsp" %>
        </footer>
    </body>
</html>
