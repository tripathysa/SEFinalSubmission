package com.fitfreakstore.dao;

import com.fitfreakstore.model.Customer;

import java.util.List;

/**
 * Created by Saurabh on 11/10/2016.
 */
public interface CustomerDao {


    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
}
