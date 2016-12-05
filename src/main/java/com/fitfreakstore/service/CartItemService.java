package com.fitfreakstore.service;

import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.model.ProductCartItem;

/**
 * Created by Saurabh on 11/13/2016.
 */
public interface CartItemService {
    void addCartItem(ProductCartItem cartItem);

    void removeCartItem(ProductCartItem cartItem);

    void removeAllCartItems(ProductCart cart);

    ProductCartItem getCartItemByProductId(int productId);
}
