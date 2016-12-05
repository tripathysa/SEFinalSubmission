package com.fitfreakstore.service.implementation;

import com.fitfreakstore.dao.ProductCartDao;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private ProductCartDao productCartDao;

    public ProductCart getCartById(int cartId)
    {
        return productCartDao.getCartById(cartId);
    }

    public void update (ProductCart cart)
    {
        productCartDao.update(cart);
    }

}
