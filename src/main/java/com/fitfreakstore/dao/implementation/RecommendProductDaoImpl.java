package com.fitfreakstore.dao.implementation;

import com.fitfreakstore.dao.ProductDao;
import com.fitfreakstore.dao.RecommendProductDao;
import com.fitfreakstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Karan on 11/5/2016.
 */
@Repository
@Transactional
public class RecommendProductDaoImpl implements RecommendProductDao {

    @Autowired
    private SessionFactory sessionFactory;


    public List<Product> getRecommendedProduct(String username){

        Session session = sessionFactory.getCurrentSession();

        Query query = session.createSQLQuery("select * from product where productid IN (select DISTINCT customerorder.productid from customerorder , users where users.username = :username and users.customerid = customerorder.customerid)")
              .addEntity(Product.class).setParameter("username",username);

        List<Product> result =  query.list();
        session.flush();
        return result;
    }
}
