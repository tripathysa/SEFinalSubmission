package com.fitfreakstore.service;

import com.fitfreakstore.model.Product;

import java.util.List;

/**
 * Created by Saurabh on 11/9/2016.
 */
public interface RecommendationService {

    public List<Product> getRecommendedProduct(String username);
}
