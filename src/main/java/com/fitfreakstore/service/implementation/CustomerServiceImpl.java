package com.fitfreakstore.service.implementation;

import com.fitfreakstore.dao.CustomerDao;
import com.fitfreakstore.model.Customer;
import com.fitfreakstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Saurabh on 11/10/2016.
 */
@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;


    public void addCustomer (Customer customer)
    {
        customerDao.addCustomer(customer);
    }

    public Customer getCustomerById (int customerId)
    {
        return customerDao.getCustomerById(customerId);
    }

    public List<Customer> getAllCustomers()
    {
        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUsername (String username)
    {
        return customerDao.getCustomerByUsername(username);
    }
}
