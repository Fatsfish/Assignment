<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dtos.ProductDTO"%>
<%@page import="dtos.CartDTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <title>Check Out</title>
        <style type="text/css">
            table { border: 0; }
            table td { padding: 10px; }
        </style>
    </head>
    <body>

        <div align="center" class="u-custom-menu u-nav-container"><div class="main-w3layouts wrapper">
                <p>Want to buy more? <a href="MainController?action=add_more">Add more!</a></p></br>
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
                    <div class="main-agileinfo">
                        <h1>Check Out</h1>
                    </div>
                    <div align="center">
                        <div class="main-agileinfolist">
                            <div class="agileits-top">
                                <div align="center">
                                    <br/>

                                    <!-- <form action="authorize_payment" method="post">
                                          <table>
                                              <td>Product/Service:</td>
                                              <td><input type="text" name="product" value="Final billing" readonly="true"/></td>
                                              <tr>
                                                  <td>Sub Total:</td>
                                                  <td><input type="text" name="subtotal" value="" /></td>
                                              </tr>
                                              <tr>
                                                  <td>Shipping:</td>
                                                  <td><input type="text" name="shipping" value="" /></td>
                                              </tr>		
                                              <tr>
                                                  <td>Tax:</td>
                                                  <td><input type="text" name="tax" value="" /></td>
                                              </tr>		
                                              <tr>
                                                  <td>Total Amount:</td>
                                                  <td><input type="text" name="total" value="" /></td>
                                              </tr>
                                              <tr>
                                                  <td colspan="2" align="center">
                                                      <input type="submit" value="Checkout" />
                                                  </td>
                                              </tr>
                                          </table>-->
                                    <c:forEach var="rows" items="${sessionScope.CART.cart}" varStatus="counter">
                                        <c:set var="total" value="${rows.value.price*rows.value.quantity+total}"></c:set>                
                                            <form action="authorize_payment" method="post">
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th>No</th>
                                                            <th>ID</th>
                                                            <th>Name</th>
                                                            <th>Price</th>
                                                            <th>Quantity</th>
                                                            <th>Total</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <td>${counter.count}</td>
                                                <td><input type="text" name="id" value="${rows.value.getId()}" readonly=""></td>
                                                <td>${rows.value.name}</td>
                                                <td>${rows.value.price}</td>
                                                <td>
                                                    <input type="text" name="quantity" value="${rows.value.quantity}" readonly="">
                                                </td>
                                                <td>${rows.value.price*rows.value.quantity}</td>  
                                                </tbody>
                                            </table>
                                        </form>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main-agileinfo">
                        <div class="main-agileinfolist">
                            <div class="agileits-top">
                                <div align="center">
                                    <form action="authorize_payment" method="post">
                                        <table>
                                            <td>Product/Service:</td>
                                            <td><input type="text" name="product" value="Final billing" readonly="true"/></td>
                                            <tr>
                                                <td>Sub Total:</td>
                                                <td><input type="text" name="subtotal" value="${total}" /></td>
                                            </tr>
                                            <tr>
                                                <td>Shipping:</td>
                                                <td><input type="text" name="shipping" value="${total/10}" /></td>
                                            </tr>		
                                            <tr>
                                                <td>Tax:</td>
                                                <td><input type="text" name="tax" value="${total/10}" /></td>
                                            </tr>		
                                            <tr>
                                                <td>Total Amount:</td>
                                                <td><input type="text" name="total" value="${total+total/5}" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="center">
                                                    <input type="submit" value="Checkout" />
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
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