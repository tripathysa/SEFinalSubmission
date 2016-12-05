package com.fitfreakstore.service.implementation;

import com.fitfreakstore.dao.CustomerOrderDao;
import com.fitfreakstore.model.CustomerOrder;
import com.fitfreakstore.model.Product;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.model.ProductCartItem;
import com.fitfreakstore.service.CartService;
import com.fitfreakstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService{

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderDao customerOrderDao;

    public void addCustomerOrder(CustomerOrder customerOrder)
    {
        customerOrderDao.addCustomerOrder(customerOrder);
    }
    public double getCustomerOrderGrandTotal(int cartId)
    {
        double grandTotal =0;
        ProductCart cart = cartService.getCartById(cartId);
        List<ProductCartItem> cartItems = cart.getCartItems();

        for (ProductCartItem item: cartItems)
        {
            grandTotal+=item.getFinalPrice();
        }

        return grandTotal;

    }

    @Override
    public List<Product> productHistory(String userName) {

        return customerOrderDao.getProductHistory(userName);

    }
}
