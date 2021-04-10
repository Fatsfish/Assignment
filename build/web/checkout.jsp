<%@page import="hoadnt.dtos.ProductDTO"%>
<%@page import="hoadnt.dtos.CartDTO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Check Out</title>
        <style type="text/css">
            table { border: 0; }
            table td { padding: 10px; }
        </style>
    </head>
    <%
        CartDTO cart = (CartDTO) session.getAttribute("CART");
        double total = 0.0;
        if (cart != null) {
    %> 
    <body>

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
<h1 align="center">Total: <%= total%> </h1>
<div align="center" class="u-custom-menu u-nav-container">
    <a href="MainController?action=add_more" align="center" >add more</a></div>
<div align="center">
    <h1>Check Out</h1>
    <br/>
    <form action="authorize_payment" method="post">
        <table>
            <td>Product/Service:</td>
            <td><input type="text" name="product" value="Final billing" readonly="true"/></td>
            <tr>
                <td>Sub Total:</td>
                <td><input type="text" name="subtotal" value="<%= total%>" /></td>
            </tr>
            <tr>
                <td>Shipping:</td>
                <td><input type="text" name="shipping" value="<%= total / 10%>" /></td>
            </tr>		
            <tr>
                <td>Tax:</td>
                <td><input type="text" name="tax" value="<%= total / 10%>" /></td>
            </tr>		
            <tr>
                <td>Total Amount:</td>
                <td><input type="text" name="total" value="<%= total + total * 20 / 100%>" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Checkout" />
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>