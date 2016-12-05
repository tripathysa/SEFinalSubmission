package com.fitfreakstore.dao.implementation;

import com.fitfreakstore.dao.CartItemDao;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.model.ProductCartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;
/**
 * Created by Saurabh on 11/13/2016.
 */
@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCartItem(ProductCartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem (ProductCartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }
    public void removeAllCartItems(ProductCart cart) {
        List<ProductCartItem> cartItems = cart.getCartItems();

        for (ProductCartItem item : cartItems) {
            removeCartItem(item);
        }
    }

    public ProductCartItem getCartItemByProductId(int productId)
    {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from ProductCartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (ProductCartItem) query.uniqueResult();
    }

}
