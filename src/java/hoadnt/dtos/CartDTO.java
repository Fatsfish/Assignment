/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hoadnt.dtos;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author User-PC
 */
public class CartDTO {

    private Map<String, ProductDTO> cart;

    public CartDTO() {
    }

    public CartDTO(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public void setCart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public Map<String, ProductDTO> getCart() {
        return cart;
    }

    public void add(ProductDTO tea) {
        if (this.cart == null) {
            this.cart = new HashMap<>();
        }
        else if (this.cart.containsKey(tea.getId())) {
            int quantity = this.cart.get(tea.getId()).getQuantity();
            tea.setQuantity(quantity + 1);
            //  tea.setQuantity(quantity + tea.getQuantity());
        }
        cart.put(tea.getId(), tea);
    }

    public void delete(String id) {
        if (this.cart == null) {
            return;
        }
        if (this.cart.containsKey(id)) {
            this.cart.remove(id);
        }
    }

    public void update(String id, ProductDTO tea) {
        if (this.cart == null) {
            return;
        }
        if (this.cart.containsKey(id)) {
            this.cart.replace(id, tea);
        }
    }

}
