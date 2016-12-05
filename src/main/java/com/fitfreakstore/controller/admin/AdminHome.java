package com.fitfreakstore.controller.admin;

import com.fitfreakstore.model.Product;
import com.fitfreakstore.service.ProductService;
import com.sun.javafx.sg.prism.NGShape;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Saurabh on 11/10/2016.
 */
@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @RequestMapping
    public String adminPage()
    {

        return "admin";
    }
    @RequestMapping("/productInventory")
    public String productInventory(Model model)
    {
        List<Product> products = productService.getProductList();
        model.addAttribute("products",products);
        return "productInventory";
    }
    @RequestMapping("/customer")
    public String customerManagement(Model model)
    {
        return "customerManagement";
    }
}
