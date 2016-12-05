package com.fitfreakstore.service.implementation;

import com.fitfreakstore.dao.ProductDao;
import com.fitfreakstore.model.Product;
import com.fitfreakstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Saurabh on 11/9/2016.
 */
@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    public Product getProductById(int productId)
    {
        return productDao.getProductById(productId);
    }

    public List<Product> getProductList()
    {
        return productDao.getProductList();
    }

    public List<Product> getSearchProductList(String searchtxt)
    {
        return productDao.getSearchProductList(searchtxt);
    }

    public List<Product> getFeaturedProductList()
    {
        return productDao.getFeaturedProductList();
    }

    public List<Product> getProductsByBrands(String brand)
    {
        return productDao.getProductsByBrands(brand);
    }
    public void addProduct(Product product)
    {
        productDao.addProduct(product);
    }
    public void modifyProduct(Product product)
    {
        productDao.modifyProduct(product);
    }
    public void deleteProduct(Product product)
    {
        productDao.deleteProduct(product);
    }
}
