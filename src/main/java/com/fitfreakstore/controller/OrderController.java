package com.fitfreakstore.controller;

import com.fitfreakstore.model.Customer;
import com.fitfreakstore.model.CustomerOrder;
import com.fitfreakstore.model.Product;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.service.CartService;
import com.fitfreakstore.service.CustomerOrderService;
import com.fitfreakstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Controller
public class OrderController {
    @Autowired
    private ProductService productService;

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId){
        ProductCart cart = cartService.getCartById(cartId);
        for(int i=0;i<cart.getCartItems().size();i++) {
            CustomerOrder customerOrder = new CustomerOrder();
            //ProductCart cart = cartService.getCartById(cartId);
            customerOrder.setCart(cart);
            Product product = cart.getCartItems().get(i).getProduct();
            product.setUnitInStock(product.getUnitInStock()-1);
            productService.addProduct(product);


            Customer customer = cart.getCustomer();
            customerOrder.setCustomer(customer);
            customerOrder.setBillingAddress(customer.getBillingAddress());
            customerOrder.setShippingAddress(customer.getShippingAddress());

            customerOrder.setProduct(cart.getCartItems().get(i).getProduct());

            customerOrder.setQuantity(cart.getCartItems().get(i).getQuantity());

            customerOrder.setGrandTotal(cart.getCartItems().get(i).getFinalPrice());



            customerOrderService.addCustomerOrder(customerOrder);


        }

        return "redirect:/checkout?cartId="+cartId;

    }
}
