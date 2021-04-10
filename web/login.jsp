<%@page import="dtos.UserError"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
--><!--
<html>
    <head>
        <title>Login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="MainController" method="POST">
            User ID <input type="text" name="userID"/>
            Password <input type="password" name="password"/>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>
        </form>
        <a href="createUser.jsp">Insert User</a>
    </body>
</html>-->

<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="243060971158-b0m3r6egqgo2bknvpkbdjnm1nen9ejf5.apps.googleusercontent.com">
        <title>Login Page</title>
        <link href="CSS/nicepage.css" media="screen" rel="stylesheet" />
        <link href="CSS/Home.css" media="screen" rel="stylesheet" /><script class="u-script" type="text/javascript" src="JS/jquery-1.9.1.min.js" defer=""></script><script class="u-script" type="text/javascript" src="JS/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 3.3.5, nicepage.com">
        <link href="images/MongSinhShop.png" rel="icon" />
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="CSS/login.css">
    </head>     
    <body>
        <%
            UserError userError = (UserError) request.getAttribute("ERROR");
            if (userError == null) {
                userError = new UserError("", "", "", "", "");
            }
        %>
        <!-- partial:index.partial.html -->
        <p class="tip">The Assignment of SE151228</p>

        <div class="cont">
            <div class="form sign-in">
                <form action="MainController" method="POST">
                    <h2>Welcome back,</h2>
                    <label>
                        <span>User ID</span>
                        <input type="text" name="userID"/>
                    </label>
                    <label>
                        <span>Password</span>
                        <input type="password" name="password" />
                    </label>
                    <p class="forgot-pass">Forgot password?</p>
                    <input type="submit" class="submit" name="action" value="Login">         </form>
                    <a class="button" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/Assignment/login-google&response_type=code
                   &client_id=243060971158-b0m3r6egqgo2bknvpkbdjnm1nen9ejf5.apps.googleusercontent.com&approval_prompt=force" class="fb-btn">Connect with <span>Google</span></a> 
                <div type="hidden" class="g-signin2" data-onsuccess="onSignIn"></div>

            </div>
            <div class="sub-cont">
                <div class="img">
                    <div class="img__text m--up">
                        <h2>New here?</h2>
                        <p>Sign up and discover great amount of new opportunities!</p>
                    </div>
                    <div class="img__text m--in">
                        <h2>One of us?</h2>
                        <p>If you already has an account, just sign in. We've missed you!</p>
                    </div>
                    <div class="img__btn">
                        <span class="m--up">Sign Up</span>
                        <span class="m--in">Sign In</span>
                    </div>
                </div>
                <div class="form sign-up">
                    <h2>Time to feel like home,</h2>
                    <label>
                        <span><a href="createUser.jsp">Insert User</a></span>
                    </label>
                    <a class="button" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/Assignment/login-google&response_type=code
                       &client_id=243060971158-b0m3r6egqgo2bknvpkbdjnm1nen9ejf5.apps.googleusercontent.com&approval_prompt=force" class="fb-btn">Or Connect with <span>Google</span></a>
                </div>
            </div>
        </div>
        <!-- partial -->
        <script  src="JS/login.js"></script>
        <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1">
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Beauty-Care.html">Beauty Care</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="X-mas.html">X-mas</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="About-James.html" target="_blank">About James</a></li>
                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="TEDxFPTUniversityHCMC.html" target="_blank">TEDxFPTUniversityHCMC</a></li>
            </ul>
        </div>
    </body>
</html>
