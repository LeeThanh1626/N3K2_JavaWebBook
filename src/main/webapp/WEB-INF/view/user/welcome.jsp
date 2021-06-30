<%-- 
    Document   : welcome
    Created on : Jun 29, 2021, 9:26:23 PM
    Author     : Dell 7450
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>Welcome ${email}</td>
            </tr>    
        </table>
        <form id="regForm" modelattribute="User" action="./XacNhan.html?email=${email}&&password=${password}" method="get">
            <table align="center">
                <tr>
                    <td>
                        Số Tiền Nạp: <input type="text" name="money"/> 
                    </td> 
                </tr>            
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Nạp"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
