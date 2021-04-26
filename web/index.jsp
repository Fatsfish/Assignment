<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="CSS/nicepage.css" media="screen" rel="stylesheet" />
        <link href="CSS/Home.css" media="screen" rel="stylesheet" /><script class="u-script" type="text/javascript" src="JS/jquery-1.9.1.min.js" defer=""></script><script class="u-script" type="text/javascript" src="JS/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 3.3.5, nicepage.com">
        <link href="images/MongSinhShop.png" rel="icon" />
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="CSS/login.css">
        <link href="CSS/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <title>Login Successful</title>
    </head>
    <body> 
        <c:if test="${empty requestScope.email or empty requestScope.id}">
            <div align="center">
                <a align="center" href="login.jsp">Please login first</a>
            </div>
        </c:if>
        <c:if test="${not empty requestScope.id and not empty requestScope.email}">
            <div class="main-w3layouts wrapper">
                <h1>Welcome user: ${requestScope.email}</h1>
                <h1>ID: ${requestScope.id}</h1>
                <div class="main-agileinfo">
                    <div class="agileits-top">
                        <a href="login.jsp" class="button" onclick="signOut();">Sign out</a>
                        <script>
                            function onSignIn(googleUser) {
                                var id_token = googleUser.getAuthResponse().id_token;
                            }

                            function signOut() {
                                var auth2 = gapi.auth2.getAuthInstance();
                                if (auth2.isSignedIn.get()) {
                                    var profile = auth2.currentUser.get().getBasicProfile();
                                    console.log('ID: ' + profile.getId());
                                    console.log('Full Name: ' + profile.getName());
                                    console.log('Given Name: ' + profile.getGivenName());
                                    console.log('Family Name: ' + profile.getFamilyName());
                                    console.log('Image URL: ' + profile.getImageUrl());
                                    console.log('Email: ' + profile.getEmail());
                                }
                                auth2.signOut().then(function () {
                                    console.log('User signed out.');
                                });
                            }
                        </script>
                    </div>
                </div>
            </div>
        </c:if>
        <h2 align="center">Navigations to other services:</h2>
        <div align="center" class="u-custom-menu u-nav-container">
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
</html>