package com.fitfreakstore.controller;

import com.fitfreakstore.model.Customer;
import com.fitfreakstore.model.Product;
import com.fitfreakstore.service.CustomerOrderService;
import com.fitfreakstore.service.CustomerService;
import com.fitfreakstore.service.ProductService;
import com.fitfreakstore.service.RecommendationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by Saurabh on 11/9/2016.
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @Autowired
    private RecommendationService recommendationService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/productList")
    public String getProducts(Model model)
    {

        List<Product> products = productService.getProductList();
        model.addAttribute("products",products);
        String search = "Search..";
        model.addAttribute("search", search);
        String username="";
        String returnView="";
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
             username = ((UserDetails)principal).getUsername();
        } else {
             username = principal.toString();
        }
        if (username!=null && username!="" && !username.equals("admin")) {

            Customer customerDetails = customerService.getCustomerByUsername(username);

            if(customerDetails.getUserType().equals("Customer")) {
                System.out.println(" printing name " + username);
                List<Product> productHistory = customerOrderService.productHistory(username);
                List<Product> recommendedProduct = recommendationService.getRecommendedProduct(username);
                model.addAttribute("recommendedProduct", recommendedProduct);
                model.addAttribute("productHistory", productHistory);
                returnView = "productList";
            }
            else {
                model.addAttribute("Customer",customerDetails);
                returnView = "vendor";
            }
        }

        else if(username!=null && username!="" && username.equals("admin")){

            returnView = "admin";
        }
        else
        {
            returnView = "productList";
        }


        return returnView;
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        Product product=productService.getProductById(productId);
        model.addAttribute("product", product);

        return "viewProduct";
    }

    //added by Noah nov 18
    //this function is used by the search bar in the menu to redirect the
    //user to the all products page but with a specific search
    @RequestMapping("/productList/{search}")
    public String search(@PathVariable String search, Model model) throws IOException
    {
        List<Product> products = productService.getSearchProductList(search);
        model.addAttribute("products",products);
        model.addAttribute("search", search);
        return "productList";
    }
}
