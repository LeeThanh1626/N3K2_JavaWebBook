<%-- 
    Document   : index
    Created on : Jun 30, 2021, 5:04:21 PM
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
    <tiles:insert page="WEB-INF/view/book/listSach.jsp" flush="true"/>
</body>
<%@include file="WEB-INF/view/header.jsp" %> 
<%@include file="WEB-INF/view/book/listSach.jsp" %>


</html>
