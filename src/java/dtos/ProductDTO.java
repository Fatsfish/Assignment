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
public class ProductDTO {

    private String id;
    private String name;
    private int quantity;
    private double price;
    private String categoryId;
    private String image;

    public ProductDTO(String id, String name, int quantity, double price) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public String getImage() {
        return image;
    }

    public ProductDTO() {
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getPrice() {
        return price;
    }

    public ProductDTO(String id, String name, String quantity, String price, String categoryId, String image) {
        this.id = id;
        this.name = name;
        this.quantity = Integer.parseInt(quantity);
        this.price = Double.parseDouble(price);
        this.categoryId = categoryId;
        this.image = image;
    }

}
