package com.fitfreakstore.dao.implementation;

import com.fitfreakstore.dao.ProductDao;
import com.fitfreakstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Saurabh on 11/5/2016.
 */
@Repository
@Transactional
public class ProductDaoImplementaiton implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public Product getProductById(int id)
    {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class,id);
        session.flush();
        return product;
    }


    public List<Product> getProductList()
	{
        
        Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Product");
		List<Product> productList = query.list();
        session.flush();
        return productList;
    }
        
    public void addProduct(Product product)
    {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }
    public List<Product> getFeaturedProductList()
    {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where featured = 'Yes'");
        List<Product> productList = query.list();
        session.flush();
        return productList;
    }
    public List<Product> getProductsByBrands(String brand)
    {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where productManufacturer = :dialog");
        query.setParameter("dialog", brand);
        List<Product> productList = query.list();
        session.flush();
        return productList;
    }


    public List<Product> getSearchProductList(String searchtxt)
    {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("FROM Product as p WHERE p.productName LIKE :dialog OR p.productCategory LIKE :dialog OR p.productManufacturer LIKE :dialog OR p.productDescription LIKE :dialog");
        query.setParameter("dialog", "%" + searchtxt + "%");
        List<Product> productList = query.list();
        session.flush();
        return productList;
    }
    public void modifyProduct(Product product)
    {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }
    public void deleteProduct(Product product)
    {
        Session session = sessionFactory.getCurrentSession();
        session.delete(product);
        session.flush();
    }

}
