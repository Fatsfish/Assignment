<%-- 
    Document   : viewCart
    Created on : Feb 25, 2021, 1:23:43 PM
    Author     : User-PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dtos.ProductDTO"%>
<%@page import="dtos.CartDTO"%>
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
        <title>Your cart</title>
    </head>
    <body>
        <div class="main-w3layouts wrapper">
            <h1>Your selected product/products!</h1>
            <c:if test="${empty sessionScope.LOGIN_USER}">
                <div class="main-agileinfo">
                    <div class="agileits-top">
                        <p>Have an account? <a href="login.jsp">Login here!</a></p>
                    </div>
                </div>
            </c:if>

            <c:if test="${empty sessionScope.CART}">
                <div class="main-agileinfo">
                    <div class="agileits-top">
                        <p>The shopping cart is empty, <a href="shopping.jsp">Add something!</a></p>
                    </div>
                </div>
            </c:if>
            <c:if test="${not empty sessionScope.CART}">
                <div align="center">
                    <div class="main-agileinfolist">
                        <div class="agileits-top">
                            <table align="center" border="1">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Delete</th>
                                        <th>Update</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="rows" items="${sessionScope.CART.cart}" varStatus="counter">
                                        <c:set var="total" value="${rows.value.price*rows.value.quantity+total}"></c:set>                
                                        <form action="MainController">
                                            <tr>
                                                <td>${counter.count}</td>
                                            <td><input type="text" name="id" value="${rows.value.getId()}" readonly=""></td>
                                            <td>${rows.value.name}</td>
                                            <td>${rows.value.price}</td>
                                            <td>
                                                <input type="number" name="quantity" value="${rows.value.quantity}">
                                            </td>
                                            <td>${rows.value.price*rows.value.quantity}</td>   
                                            <td>
                                                <input type="submit" name="action" value="Delete Cart">
                                            </td>
                                            <td>
                                                <input type="submit" name="action" value="Update Cart">
                                            </td>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </c:if>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <h1> Total: ${total} </h1>
                    <p>Want to buy more? <a href="MainController?action=add_more">Add more!</a></p></br>
                    <p>Finish checking your cart?</br><a href="checkout.jsp">Get confirmation - check out!</a></p>
                    <c:if test="${not empty sessionScope.LOGIN_USER}">
                        <form action="MainController"> 
                            <input type="submit" name="action" value="Logout"/>
                        </form>
                    </c:if>
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
</html>
