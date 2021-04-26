<%--
    Document   : createUser
    Created on : Feb 27, 2021, 2:25:13 PM
    Author     : User-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>User Sign Up Form</title>
        <link rel="stylesheet" href="CSS/style.css">

    </head>
    <body>
        <!DOCTYPE html>
    <html>
        <head>
            <title>User Sign Up Form</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
            <link href="CSS/style.css" rel="stylesheet" type="text/css" media="all" />
            <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
            <link href="CSS/nicepage.css" media="screen" rel="stylesheet" />
            <link href="CSS/Home.css" media="screen" rel="stylesheet" /><script class="u-script" type="text/javascript" src="JS/jquery-1.9.1.min.js" defer=""></script><script class="u-script" type="text/javascript" src="JS/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 3.3.5, nicepage.com">
            <link href="images/MongSinhShop.png" rel="icon" />
        </head>
        <body>
            <!-- main -->
            <div class="main-w3layouts wrapper">
                <h1>User Sign Up Form</h1>
                <div class="main-agileinfo">
                    <div class="agileits-top">
                        <form action="MainController" method="post">
                            <input class="text" type="text" name="userID" placeholder="User ID" required=""></br>       
                            <input class="text" type="text" name="fullName" placeholder="Full Name" required="">           
                            <input class="text email" type="email" name="email" placeholder="Email" required=""> 
                            <input class="text" type="text" name="phone" placeholder="Phone Number" required=""></br>
                            <input class="text" type="text" name="address" placeholder="Shipping Address" required=""></br>        
                            <input class="text" type="password" name="password" placeholder="Password" required="">
                            <input class="text w3lpass" type="password" name="confirm" placeholder="Confirm Password" required=""> 
                            <div class="wthree-text">
                                <label class="anim">
                                    <input type="checkbox" class="checkbox" required="">
                                    <span>I Agree To The Terms & Conditions</span>
                                </label>
                                <div class="clear"> </div>
                            </div>
                            <input type="submit" name="action" value="Create">
                        </form>
                        <p>Already have an Account? <a href="login.jsp"> Login Now!</a></p>
                    </div>
                </div>
                <!-- copyright -->
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
            </div>
            <!-- //main -->
        </body>
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
    </html>
    <!-- partial -->
</body>
<h1>${requestScope.ERROR.userIDError}</h1>
<h1>${requestScope.ERROR.fullNameError}</h1>
<h1>${requestScope.ERROR.roleIDError}</h1>
<h1>${requestScope.ERROR.passwordError}</h1>
<h1>${requestScope.ERROR.confirmError}</h1>
<h1>${requestScope.ERROR.phoneError}</h1>
<h1>${requestScope.ERROR.emailError}</h1>
<h1>${requestScope.ERROR.addressError}</h1>
</html>
