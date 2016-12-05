package com.fitfreakstore.controller;

import com.fitfreakstore.model.Customer;
import com.fitfreakstore.model.CustomerOrder;
import com.fitfreakstore.model.ProductCart;
import com.fitfreakstore.service.CartService;
import com.fitfreakstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Saurabh on 11/13/2016.
 */
@Controller
public class VendorController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/vendorReport/{customerId}")
    public String createOrder(@PathVariable("customerId") int customerId){
        //  ProductCart cart = cartService.getCartById(customerId);

        System.out.println(" =================== > "+customerId);

//        for(int i=0;i<cart.getCartItems().size();i++) {
//            CustomerOrder customerOrder = new CustomerOrder();
//            //ProductCart cart = cartService.getCartById(customerId);
//            customerOrder.setCart(cart);
//
//            Customer customer = cart.getCustomer();
//            customerOrder.setCustomer(customer);
//            customerOrder.setBillingAddress(customer.getBillingAddress());
//            customerOrder.setShippingAddress(customer.getShippingAddress());
//
//            customerOrder.setProduct(cart.getCartItems().get(i).getProduct());
//
//            customerOrderService.addCustomerOrder(customerOrder);
//        }

        return "redirect:/checkout?customerId="+customerId;

    }
}
