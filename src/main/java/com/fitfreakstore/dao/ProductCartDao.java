package com.fitfreakstore.dao;

import com.fitfreakstore.model.ProductCart;

import java.io.IOException;

/**
 * Created by Saurabh on 11/6/2016.
 */
public interface ProductCartDao {
    ProductCart getCartById(int cartId);

    ProductCart validate(int cartId) throws IOException;

    void update(ProductCart cart);


}
