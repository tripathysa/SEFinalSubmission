package com.fitfreakstore.service;

import com.fitfreakstore.model.CustomerOrder;
import com.fitfreakstore.model.Product;

import java.util.List;

/**
 * Created by Saurabh on 11/13/2016.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
    public List<Product> productHistory(String userName);
}
