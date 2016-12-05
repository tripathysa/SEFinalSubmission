package com.fitfreakstore.service;

import com.fitfreakstore.model.ProductCart;

/**
 * Created by Saurabh on 11/13/2016.
 */
public interface CartService {
    ProductCart getCartById(int cartId);
    void update(ProductCart cart);
}
