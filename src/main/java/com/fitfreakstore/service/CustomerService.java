package com.fitfreakstore.service;

import com.fitfreakstore.model.Customer;

import java.util.List;

/**
 * Created by Saurabh on 11/10/2016.
 */
public interface CustomerService {


    void addCustomer (Customer customer);

    Customer getCustomerById (int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername (String username);
}
