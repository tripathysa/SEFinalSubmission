package com.fitfreakstore.dao;

import com.fitfreakstore.model.Product;

import java.util.List;

/**
 * Created by Karan on 11/5/2016.
 */
public interface RecommendProductDao {

    public List<Product> getRecommendedProduct(String username);

}
