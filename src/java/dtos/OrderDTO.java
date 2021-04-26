/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author User-PC
 */
public class OrderDTO {

    private String userID;
    private String orderID;
    private String Date;
    private String total;

    public OrderDTO() {
    }

    public OrderDTO(String userID, String orderID, String Date, String total) {
        this.userID = userID;
        this.orderID = orderID;
        this.Date = Date;
        this.total = total;
    }
    public OrderDTO(String userID, String Date, String total) {
        this.userID = userID;
        this.Date = Date;
        this.total = total;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getUserID() {
        return userID;
    }

    public String getOrderID() {
        return orderID;
    }

    public String getDate() {
        return Date;
    }

    public String getTotal() {
        return total;
    }

}
