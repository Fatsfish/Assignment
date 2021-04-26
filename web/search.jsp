<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="daos.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="dtos.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="all">
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="./login.css">
        <link href="CSS/nicepage.css" media="screen" rel="stylesheet" />
        <link href="CSS/Home.css" media="screen" rel="stylesheet" /><script class="u-script" type="text/javascript" src="JS/jquery-1.9.1.min.js" defer=""></script><script class="u-script" type="text/javascript" src="JS/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 3.3.5, nicepage.com">
        <link href="CSS/nicepage.css" media="screen" rel="stylesheet">
        <link href="images/MongSinhShop.png" rel="icon">
        <title>Search Page</title>
    </head>
    <body>  
        <c:if test="${empty sessionScope.LOGIN_USER}">
            <a align="center" href="login.jsp">Please login first</a>
        </c:if>
        <c:if test="${not empty sessionScope.LOGIN_USER}">
            <c:if test="${sessionScope.LOGIN_USER.role ne 'AD'}">
                <c:redirect url="login.jsp"></c:redirect>
            </c:if>
            <c:if test="${sessionScope.LOGIN_USER.role == 'AD'}">
                <h1>Welcome:${sessionScope.LOGIN_USER.fullname}</h1>
                <div class="main-w3layouts wrapper">
                    <h1>User Search and Edit page</h1>
                    <div class="main-agileinfo">
                        <div class="agileits-top">
                            <form action="MainController"> 
                                <input type="submit" name="action" value="Logout"/>
                            </form>
                            <c:if test="${not empty param.search}">
                                <form action="MainController">
                                    <p>Search</p> <input class="text" type="text" name="search" value="${param.search}"/>
                                    <input type="submit" name="action" value="Search"/>
                                </form>
                            </c:if>
                            <c:if test="${empty param.search}">
                                <form action="MainController">
                                    <p>Search</p> <input class="text" type="text" name="search" value=""/>
                                    <input type="submit" name="action" value="Search"/>
                                </form>
                            </c:if>
                        </div>
                    </div>
                </div>

                <c:if test="${requestScope.LIST_USER != null && not empty requestScope.LIST_USER}">
                    <div class="main-w3layouts wrapper">
                        <div align="center">
                            <div class="main-agileinfolist">
                                <div class="agileits-top"> 
                                    <table border="1">
                                        <table border="1">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>User ID</th>
                                                    <th>Full Name</th>
                                                    <th>Role ID</th>
                                                    <th>Password</th>
                                                    <th>Delete</th>
                                                    <th>Update</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                                                <form action="MainController">
                                                    <tr>
                                                        <td>${counter.count}</td>
                                                        <td>${user.userID}</td>
                                                        <td>${user.fullname}</td>
                                                        <td>${user.role}</td>
                                                        <td>${user.password}</td>
                                                        <td
                                                            <input type="hidden" name="search" value="${param.search}"/>
                                                            <input type="hidden" name="userID" value="${user.userID}"/>
                                                            <input type="hidden" name="roleID" value="${user.role}"/>
                                                            <input type="submit" name="action" value="Delete"/>
                                                        </td>
                                                        <td>
                                                            <input type="submit" name="action" value="Update"/>
                                                            <input type="hidden" name="userID" value="${user.userID}"/>
                                                            <input type="hidden" name="fullName" value="${user.fullname}"/>
                                                            <input type="hidden" name="roleID" value="${user.role}"/>
                                                            <input type="hidden" name="search" value="${param.search}"/>
                                                        </td>
                                                </form>
                                                </tr>
                                                </tbody>
                                            </c:forEach>
                                        </table>
                                    </c:if>

                                </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <h2 align="center">Navigations to other services:</h2>
        <div class="u-custom-menu u-nav-container" align="center">
            <ul class="u-nav u-unstyled u-nav-1">
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Beauty-Care.html">Beauty Care</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="X-mas.html">X-mas</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="About-James.html" target="_blank">About James</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="TEDxFPTUniversityHCMC.html" target="_blank">TEDxFPTUniversityHCMC</a></li>
            </ul>
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
    <h1> ${requestScope.DELETE_ERROR}</h1>

</html>
