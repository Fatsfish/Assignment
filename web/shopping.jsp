<%-- 
    Document   : shopping.jsp
    Created on : Feb 23, 2021, 3:28:27 PM
    Author     : User-PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <title>Shopping page</title>
    </head>
    <body>
        <div class="main-w3layouts wrapper">
            <h1>It's time for you to make decisions!</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <c:if test="${empty sessionScope.LOGIN_USER}">
                        Have an account?<a href="login.jsp">Login here!</a>
                    </c:if>
                    <c:if test="${not empty sessionScope.LOGIN_USER}">
                        <form action="MainController"> 
                            <input type="submit" name="action" value="Logout"/>
                        </form>
                    </c:if>
                    <form action="MainController">
                        Choose your product:
                        <select name="cmbTea">
                            <option value="1-Violet-100">Violet</option>
                            <option value="2-Rose-20">Rose</option>
                            <option value="3-Sun flower-40">Sun flower</option>
                        </select>
                        <input type="submit" name="action" value="Add"/>
                        <input type="submit" name="action" value="View Cart"/>
                    </form>

                    <h1>
                        ${requestScope.MESSAGE}                    
                    </h1>
                </div>
            </div>
        </div>
        <div class="colorlibcopy-agile">
            <p>© 2021 Flower shop. All rights reserved | Design by <a href="About-James.html" target="_blank">James</a></p>
        </div>
        <!-- //copyright -->
        <ul class="colorlib-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </body>
    <h1>
        ${requestScope.ERROR}                    
    </h1>
</html>
