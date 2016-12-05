package com.fitfreakstore.dao;

import com.fitfreakstore.model.Product;

import java.util.List;

/**
 * Created by Saurabh on 11/5/2016.
 */
public interface ProductDao {
    List<Product> getProductList();

    List<Product> getFeaturedProductList();

    List<Product> getSearchProductList(String searchtxt);

    List<Product> getProductsByBrands(String productManufacturer);

    Product getProductById(int id);

    void addProduct(Product product);

    void modifyProduct(Product product);

    void deleteProduct(Product product);


}
