<%-- 
    Document   : updateUser
    Created on : Feb 27, 2021, 1:31:24 PM
    Author     : User-PC
--%>

<%@page import="dtos.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
        <!--<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'><link rel="stylesheet" href="./login.css">
        --><link href="CSS/nicepage.css" media="screen" rel="stylesheet" />
        <link href="CSS/Home.css" media="screen" rel="stylesheet" /><script class="u-script" type="text/javascript" src="JS/jquery-1.9.1.min.js" defer=""></script><script class="u-script" type="text/javascript" src="JS/nicepage.js" defer=""></script><meta name="generator" content="Nicepage 3.3.5, nicepage.com">
        <link href="images/MongSinhShop.png" rel="icon" />
        <title>Update User Information</title>
    </head>
    <body>
        <%
            String userID = request.getParameter("userID");
            String fullName = request.getParameter("fullName");
            String roleID = request.getParameter("roleID");
            String search = request.getParameter("search");

            UserError userError = (UserError) request.getAttribute("ERROR");
            if (userError == null) {
                userError = new UserError("", "", "", "", "");
            }
        %>
        <form action="MainController">
            UserID<input type="text" name="userID" value="<%=userID%>" readonly="true"/></br>
            <label><span>Full Name (Limit to 10 characters)</span></br><input type="text" name="fullName" value="<%=fullName%>" required="true"/></br>
                <%=userError.getFullNameError()%>
            </label>
            <label><span>Role ID (AD, M, G)</span></br><input type="text" name="roleID" value="<%=roleID%>" required="true"/></br>    
                <%=userError.getRoleIDError()%></label>
            <input type="hidden" name="search" value="<%=search%>" required="true"/></br>
            <input type="submit" name="action" value="Confirm"/>
            <input type="reset" value="Reset"/>
            <h2>Navigations to other services:</h2>
            <div class="u-custom-menu u-nav-container">
                <ul class="u-nav u-unstyled u-nav-1">
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.html">Home</a></li>
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="Beauty-Care.html">Beauty Care</a></li>
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="X-mas.html">X-mas</a></li>
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="About-James.html" target="_blank">About James</a></li>
                    <li class="u-nav-item"><a class="u-button-style u-nav-link" href="TEDxFPTUniversityHCMC.html" target="_blank">TEDxFPTUniversityHCMC</a></li>
                </ul>
            </div>
        </form>

    </body>
</html>
