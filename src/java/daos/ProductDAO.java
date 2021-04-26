/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import dtos.ProductDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtils;

/**
 *
 * @author User-PC
 */
public class ProductDAO {

    public ProductDTO get(int productID) throws SQLException {
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "Select productID, productName, price, quantity, categoryID, image "
                        + "FROM tblProduct "
                        + "Where productID=\'" + productID + "\'";
                stm = conn.prepareStatement(sql);
                rs = stm.executeQuery();
                if (rs.next()) {
                    String productName = rs.getString("productName");
                    String image = rs.getString("image");
                    int categoryID = rs.getInt("categoryID");
                    int quantity = rs.getInt("quantity");
                    float price = rs.getFloat("price");
                    product = new ProductDTO(String.format("%d", productID), productName, String.format("%d", quantity), String.format("%.2f", price), String.format("%d", categoryID), image);
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
        return product;
    }

    public boolean update(ProductDTO product) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPdaTE tblProduct SET quantity=? "
                        + " Where productID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, product.getQuantity());
                stm.setInt(2, Integer.parseInt(product.getId()));
                check = stm.executeUpdate() > 0 ? true : false;
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
        return check;
    }

    public boolean update(int productID, int quantity) throws SQLException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                String sql = "UPdaTE tblProduct SET quantity=? "
                        + " Where productID=?";
                stm = conn.prepareStatement(sql);
                stm.setInt(1, quantity);
                stm.setInt(2, productID);
                check = stm.executeUpdate() > 0 ? true : false;
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
        return check;
    }

}
