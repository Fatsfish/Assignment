package dtos;

public class OrderDetailDTO {

    private String productID;
    private String orderID;
    private int quantity;
    private String productName;
    private float subtotal;
    private float shipping;
    private float tax;
    private float total;

    public OrderDetailDTO() {
    }

    public OrderDetailDTO(String productID, String orderID, String quantity) {
        this.productID = productID;
        this.orderID = orderID;
        this.quantity = Integer.parseInt(quantity);
    }

    public OrderDetailDTO(String productID, String orderID, String quantity, String productName, String subtotal,
            String shipping, String tax, String total) {
        this.productID = productID;
        this.orderID = orderID;
        this.quantity = Integer.parseInt(quantity);
        this.productName = productName;
        this.subtotal = Float.parseFloat(subtotal);
        this.shipping = Float.parseFloat(shipping);
        this.tax = Float.parseFloat(tax);
        this.total = Float.parseFloat(total);
    }

    public String getProductID() {
        return productID;
    }

    public String getOrderID() {
        return orderID;
    }

    public String getQuantity() {
        return String.format("%d", quantity);
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public void setShipping(float shipping) {
        this.shipping = shipping;
    }

    public void setTax(float tax) {
        this.tax = tax;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setProductID(String productID) {
        this.productID = productID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getProductName() {
        return productName;
    }

    public String getSubtotal() {
        return String.format("%.2f", subtotal);
    }

    public String getShipping() {
        return String.format("%.2f", shipping);
    }

    public String getTax() {
        return String.format("%.2f", tax);
    }

    public String getTotal() {
        return String.format("%.2f", total);
    }
}
