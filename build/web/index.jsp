<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Login Successful</title>
    </head>
    <body>
        <h1>Welcome user</h1>
        ID: ${requestScope.id}</br>
        Name: ${requestScope.name}</br>
        Email: ${requestScope.email}</br>
    </body>
    <h4>Navigations:</h4>
    <div class="u-custom-menu u-nav-container">
        <ul class="u-nav u-unstyled u-nav-1">
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a></li>
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Beauty-Care.html">Beauty Care</a></li>
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="X-mas.html">X-mas</a></li>
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="About-James.html" target="_blank">About James</a></li>
            <li class="u-nav-item"><a class="u-button-style u-nav-link" href="TEDxFPTUniversityHCMC.html" target="_blank">TEDxFPTUniversityHCMC</a></li>
        </ul>
    </div>
</html>