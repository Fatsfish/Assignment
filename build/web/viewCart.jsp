<%-- 
    Document   : viewCart
    Created on : Feb 25, 2021, 1:23:43 PM
    Author     : User-PC
--%>

<%@page import="hoadnt.dtos.ProductDTO"%>
<%@page import="hoadnt.dtos.CartDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your cart</title>
    </head>

    <h1>Your selected product/products!</h1>
    <%
        CartDTO cart = (CartDTO) session.getAttribute("CART");
        double total = 0.0;
        if (cart != null) {
    %>
    <table border="1">
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
            <%
                int count = 1;
                for (ProductDTO tea : cart.getCart().values()) {
                    total += tea.getQuantity() * tea.getPrice();
            %>                    
        <form action="MainController">
            <tr>
                <td><%= count++%></td>
                <td><%--=tea.getId()--%>
                    <input type="text" name="id" value="<%=tea.getId()%>" readonly="true"/>
                </td>
                <td><%=tea.getName()%></td>
                <td><%=tea.getPrice()%></td>
                <td><%=tea.getQuantity()%>
                    <input type="number" name="quantity" value="<%=tea.getQuantity()%>" required="true"/>
                </td>
                <td><%=tea.getQuantity() * tea.getPrice()%></td>
                <td>        
                        <%--<input type="hidden" name="id" value="<%=tea.getId()%>"/>--%>
                        <input type="submit" name="action" value="Delete Cart"/>
                </td>
                <td>                   
                        <input type="submit" name="action" value="Update Cart"/>
                </td>
        </form>
    </tr>
    <%
        }
    %>

</tbody>
</table>
<%
    }
%>
Total: <%= total%> 
<a href="MainController?action=add_more">add more</a>
<a href="checkout.jsp">Get confirmation - check out</a>
</html>
