package com.fitfreakstore.dao;

import com.fitfreakstore.model.CustomerOrder;
import com.fitfreakstore.model.Product;

import java.util.List;

/**
 * Created by Saurabh on 11/13/2016.
 */
public interface CustomerOrderDao {

    void addCustomerOrder(CustomerOrder customerOrder);

    public List<Product> getProductHistory(String userName);

}
