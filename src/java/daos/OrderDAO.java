/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import dtos.CartDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtils;
import dtos.OrderDTO;
import dtos.OrderDetailDTO;
import dtos.ProductDTO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User-PC
 */
public class OrderDAO {

    public OrderDTO get(String orderID) throws SQLException {
        OrderDTO order = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select userID, date, total "
                        + "FROM tblOrder "
                        + "Where orderID=\'" + orderID + "\'";
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String userID = rs.getString("userID");
                    String date = rs.getString("date");
                    String total = rs.getString("total");
                    order = new OrderDTO(userID, orderID, date, total);
                }
            }
        } catch (ClassNotFoundException | SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }

        }
        return order;
    }

    public String getID() throws SQLException {
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String orderID = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "SELECT  IDENT_CURRENT ('tblOrder') AS Current_Identity;";
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                if (rs.next()) {
                    orderID = rs.getString("Current_Identity");
                }
            }
        } catch (ClassNotFoundException | SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }

        }
        return orderID;
    }

    public void insert(OrderDTO order) throws SQLException {
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "INSERT INTO tblOrder (userID, date, total) "
                        + " VALUES(?,CURRENT_TIMESTAMP,?)";
                stm = conn.prepareStatement(sql);
                stm.setString(1, order.getUserID());
                stm.setString(2, order.getTotal());
                stm.executeUpdate();
            }
        } catch (Exception e) {

        } finally {
            if (stm != null) {
                stm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }

    public void insertDetail(CartDTO cart) throws SQLException {
        Connection conn = null;
        PreparedStatement stm = null;
        if (cart == null) {
            cart = new CartDTO();
        }
        for (ProductDTO product : cart.getCart().values()) {
            try {
                conn = DBUtils.getConnection();
                if (conn != null) {
                    String sql = "INSERT INTO tblOrderDetail (productID, orderID, quantity) "
                            + " VALUES(?,?,?)";
                    stm = conn.prepareStatement(sql);
                    stm.setString(1, product.getId());
                    stm.setString(2, getID());
                    stm.setInt(3, product.getQuantity());                    
                    stm.executeUpdate();
                }
            } catch (Exception e) {

            } finally {
                if (stm != null) {
                    stm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            }
        }

    }

}
