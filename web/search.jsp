<%-- 
    Document   : search
    Created on : Jan 21, 2021, 1:41:33 PM
    Author     : User-PC
--%>

<%@page import="daos.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="dtos.UserDTO"%>
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
        <title>Search Page</title>
    </head>
    <body>
        <%
            UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");
            if (user == null) {
                response.sendRedirect("login.html");
            }
            String searchValue = request.getParameter("search");
            if (searchValue != null) {
                searchValue = "";
            }

        %>
        <h1>Welcome:<%=((UserDTO) session.getAttribute("LOGIN_USER")).getFullname()%></h1>
        <form action="MainController">
            <input type="submit" name="action" value="Logout"/>
        </form>
        <form action="MainController">
            Search <input type="text" name="search" value="<%=searchValue%>"/>
            <input type="submit" name="action" value="Search"/>
        </form>
        <% List<UserDTO> list = (List<UserDTO>) request.getAttribute("LIST_USER");
            if (list != null) {
        %>
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
                <% int count = 1;
                    for (UserDTO dto : list) {
                %>
            <form action="MainController">
                <tr>
                    <td><%=count++%></td>
                    <td><%=dto.getUserID()%></td>
                    <td><%=dto.getFullname()%></td>
                    <td><%=dto.getRole()%></td>
                    <td><%=dto.getPassword()%></td>
                    <td><a href="MainController?search=<%= request.getParameter("search")%>&action=Delete&userID=<%=dto.getUserID()%>">Delete</a></td>
                    <td>
                        <input type="submit" name="action" value="Update"/>
                        <input type="hidden" name="userID" value="<%= dto.getUserID()%>"/>
                        <input type="hidden" name="fullName" value="<%= dto.getFullname()%>"/>
                        <input type="hidden" name="roleID" value="<%= dto.getRole()%>"/>
                    </td>
                </tr>
            </form>
            <%}%>
        </tbody>
    </table>
    <%}%>
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
</body>
</html>
