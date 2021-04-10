<%-- 
    Document   : shopping.jsp
    Created on : Feb 23, 2021, 3:28:27 PM
    Author     : User-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping page</title>
    </head>
    <body>
        <h1>It's time for you to make decisions!</h1>
        <form action="MainController">
            Choose your product:
            <select name="cmbTea">
                <option value="T001-Perfume-100">Pink perfume</option>
                <option value="T002-Longhanded shirt-20">Long-handed shirt</option>
                <option value="T003-Vitamins-40">Vitamins</option>
            </select>
            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View Cart"/>
        </form>
        <% String message = (String) request.getAttribute("MESSAGE");
            if (message != null) {
        %>
        <h1>
            <%=message%>
        </h1>
        <%
            }
        %>
    </body>
</html>
