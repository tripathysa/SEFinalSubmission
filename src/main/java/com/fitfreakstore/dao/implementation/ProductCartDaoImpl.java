package com.fitfreakstore.dao.implementation;

import com.fitfreakstore.dao.ProductCartDao;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.service.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Repository
@Transactional
public class ProductCartDaoImpl implements ProductCartDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Autowired
    private CustomerOrderService customerOrderService;

    public ProductCart getCartById(int cartId)
    {
        Session session = sessionFactory.getCurrentSession();
        return (ProductCart) session.get(ProductCart.class,cartId);
    }
    public void update(ProductCart cart)
    {

        int cartId = cart.getCartId();

        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setTotalPrice(grandTotal);

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
    }

    public ProductCart validate(int cartId) throws IOException {
        ProductCart cart=getCartById(cartId);
        if(cart==null||cart.getCartItems().size()==0) {
            throw new IOException(cartId+"");
        }
        update(cart);
        return cart;
    }

}
