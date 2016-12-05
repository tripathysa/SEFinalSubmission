package com.fitfreakstore.dao.implementation;

import com.fitfreakstore.dao.CustomerOrderDao;
import com.fitfreakstore.model.CustomerOrder;
import com.fitfreakstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }

    @Override
    public List<Product> getProductHistory(String userName) {
        Session session = sessionFactory.getCurrentSession();

        Query query = session.createSQLQuery("SELECT product.* from product,users, customerorder where  users.username=:userName and users.customerid=customerorder.customerid and customerorder.productid=product.productid")
                .addEntity(Product.class).setParameter("userName",userName);

        List<Product> result =  query.list();

        session.flush();
        return result;
    }

}
