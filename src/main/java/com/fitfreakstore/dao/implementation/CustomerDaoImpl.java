package com.fitfreakstore.dao.implementation;

import com.fitfreakstore.dao.CustomerDao;
import com.fitfreakstore.model.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Saurabh on 11/10/2016.
 */
@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomer(Customer customer)
    {
        Session session = sessionFactory.getCurrentSession();

        customer.getBillingAddress().setCustomer(customer);
        customer.getShippingAddress().setCustomer(customer);

        session.saveOrUpdate(customer);
        session.saveOrUpdate(customer.getBillingAddress());
        session.saveOrUpdate(customer.getShippingAddress());

        Users newUser = new Users();
        newUser.setUsername(customer.getUsername());
        newUser.setPassword(customer.getPassword());
        newUser.setEnabled(true);
        newUser.setCustomerId(customer.getCustomerId());

        Authorities newauth = new Authorities();
        newauth.setUsername(customer.getUsername());
        if(customer.getUserType().equals("Customer")) {
            newauth.setAuthority("ROLE_USER");
        }
        else
        {
            newauth.setAuthority("ROLE_VENDOR");
        }
        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newauth);

        ProductCart newCart = new ProductCart();
        newCart.setCustomer(customer);
        customer.setCart(newCart);
        session.saveOrUpdate(customer);
        session.saveOrUpdate(newCart);

        session.flush();


    }

    public Customer getCustomerById(int customerId){
        Session session = sessionFactory.getCurrentSession();
        return (Customer) session.get(Customer.class,customerId);
    }

    public List<Customer> getAllCustomers()
    {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer");
        List<Customer> listCustomers = query.list();
        return listCustomers;
    }


    public Customer getCustomerByUsername(String username){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Customer where username = ?");
        query.setString(0,username);
        return  (Customer)  query.uniqueResult();
    }
}
