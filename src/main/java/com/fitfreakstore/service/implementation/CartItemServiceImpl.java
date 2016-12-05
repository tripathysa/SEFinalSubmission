package com.fitfreakstore.service.implementation;

import com.fitfreakstore.dao.CartItemDao;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.model.ProductCartItem;
import com.fitfreakstore.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private CartItemDao cartItemDao;

    public void addCartItem(ProductCartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(ProductCartItem cartItem) {
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(ProductCart cart){
        cartItemDao.removeAllCartItems(cart);
    }

    public ProductCartItem getCartItemByProductId(int productId){
        return cartItemDao.getCartItemByProductId(productId);
    }

}