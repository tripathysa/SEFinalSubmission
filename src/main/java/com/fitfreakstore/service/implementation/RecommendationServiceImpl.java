package com.fitfreakstore.service.implementation;

import com.fitfreakstore.dao.ProductDao;
import com.fitfreakstore.dao.RecommendProductDao;
import com.fitfreakstore.model.Product;
import com.fitfreakstore.service.ProductService;
import com.fitfreakstore.service.RecommendationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Karan on 11/9/2016.
 */

@Service
public class RecommendationServiceImpl implements RecommendationService {

    @Autowired
    private RecommendProductDao recommendProductDao;

    public List<Product> getRecommendedProduct(String username){

        return recommendProductDao.getRecommendedProduct(username);

    }

}
