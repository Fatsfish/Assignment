package controller;

import daos.PayPalDAO;
import dtos.PayPalDetail;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.paypal.base.rest.PayPalRESTException;
import daos.OrderDAO;
import daos.ProductDAO;
import daos.UserDAO;
import dtos.CartDTO;
import dtos.OrderDTO;
import java.util.List;
import dtos.OrderDetailDTO;
import dtos.ProductDTO;
import dtos.UserDTO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/authorize_payment")
public class PayPalAuthorizePayment extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public PayPalAuthorizePayment() {
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String product = request.getParameter("product");
        String subtotal = request.getParameter("subtotal");
        String shipping = request.getParameter("shipping");
        String tax = request.getParameter("tax");
        String total = request.getParameter("total");
        HttpSession session = request.getSession(true);
        UserDTO user = (UserDTO) session.getAttribute("LOGIN_USER");
        CartDTO cart = (CartDTO) session.getAttribute("CART");
        ProductDAO flowerdao = null;
        boolean check = false;
        if (cart == null) {
            cart = new CartDTO();
        }
        UserDAO test = new UserDAO();
        if (user == null) {
            try {
                user = test.checkLogin("guest", "123456");
            } catch (SQLException ex) {
                Logger.getLogger(PayPalAuthorizePayment.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        /*for (ProductDTO flower : cart.getCart().values()) {
            try {
                int value = flowerdao.get(Integer.parseInt(flower.getId())).getQuantity();
                if (flower.getQuantity() <= value) {
                    if (flowerdao.update(Integer.parseInt(flower.getId()), value - flower.getQuantity())) {
                        check = true;
                    } else {
                        check = false;
                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(PayPalAuthorizePayment.class.getName()).log(Level.SEVERE, null, ex);
            }
        }*/

 /*List<OrderDetailDTO> list = new ArrayList<>();
        HttpSession session = request.getSession(true);
        CartDTO cart = (CartDTO) session.getAttribute("CART");
        if (cart == null) {
            cart = new CartDTO();
        }
        for (ProductDTO product : cart.getCart().values()) {
            OrderDetailDTO orderDetail = new OrderDetailDTO(product.getCategoryId(),"", String.format("%d",product.getQuantity()), product.getName(), subtotal, shipping, tax, total);
            list.add(orderDetail);
        }*/
        OrderDTO dto = new OrderDTO(user.getUserID(), "CURRENT_TIMESTAMP", total);
        OrderDAO dao = new OrderDAO();
        try {
            dao.insert(dto);
        } catch (SQLException ex) {
            Logger.getLogger(PayPalAuthorizePayment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            product = dao.getID();
        } catch (SQLException ex) {
            Logger.getLogger(PayPalAuthorizePayment.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            dao.insertDetail(cart);
        } catch (SQLException ex) {
            Logger.getLogger(PayPalAuthorizePayment.class.getName()).log(Level.SEVERE, null, ex);
        }

        PayPalDetail orderDetail = new PayPalDetail(product, subtotal, shipping, tax, total);
        try {
            PayPalDAO paymentServices = new PayPalDAO();
            String approvalLink = paymentServices.authorizePayment(orderDetail);
            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

}
