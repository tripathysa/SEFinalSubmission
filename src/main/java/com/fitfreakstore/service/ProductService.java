package com.fitfreakstore.service;

import com.fitfreakstore.model.Product;

import java.util.List;

/**
 * Created by Saurabh on 11/9/2016.
 */
public interface ProductService {
    List<Product> getProductList();
    List<Product> getSearchProductList(String searchtxt);
    List<Product> getFeaturedProductList();
    List<Product> getProductsByBrands(String brand);
    Product getProductById(int id);
    void addProduct(Product product);
    void modifyProduct(Product product);
    void deleteProduct(Product product);


}
