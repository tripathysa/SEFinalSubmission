package com.fitfreakstore.controller;

import com.fitfreakstore.model.Product;
import com.fitfreakstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

/**
 * Created by Saurabh on 11/9/2016.
 */
@Controller
public class HomeController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/")
    public String home(Model model)
    {
        List<Product> products = productService.getFeaturedProductList();
        model.addAttribute("featuredProducts",products);

        return "home";
    }
    @RequestMapping("/brands/{productManufacturer}")
    public String getProductsByBrands(@PathVariable String productManufacturer, Model model) throws IOException
    {
        List<Product> products = productService.getProductsByBrands(productManufacturer);
        model.addAttribute("brandProducts",products);

        return "brandProductList";
    }




    @RequestMapping("/login")
    public String login(@RequestParam(value="error",required = false) String error,@RequestParam(value="logout",
            required = false) String logout, Model model)
    {
        if (error!=null)
        {
            model.addAttribute("error","Wrong Credentials! Please try again");
        }
        if(logout!=null)
        {
            model.addAttribute("msg","You're Logged out.");
        }
        return "login";
    }
    @RequestMapping("{categoryName}Category")
    //FOR THIS FUNCTION TO WORK, EACH PRODUCT MUST HAVE A COMMA-SEPARATED LIST
    //OF THE CATEGORIES THAT IT BELONGS TO
    //Noah Kaufman 11-17-16
    public String category(@PathVariable String categoryName, Model model) throws IOException {
        //hashmap from category to 3 images
        Hashtable<String,String[]> category_images = new Hashtable<String,String[]>();
        category_images.put("nutrition",new String[] {"/resources/css/images/nutrition1.jpg","/resources/css/images/nutrition2.jpg","/resources/css/images/nutrition3.jpg"});
        category_images.put("drinks",new String[] {"/resources/css/images/drinks1.jpg","/resources/css/images/drinks2.jpg","/resources/css/images/drinks3.jpg"});
        category_images.put("supplements",new String[] {"/resources/css/images/supplements1.jpg","/resources/css/images/supplements2.jpg","/resources/css/images/supplements3.jpg"});
        category_images.put("health foods",new String[] {"/resources/css/images/health foods1.jpg","/resources/css/images/health foods2.jpg","/resources/css/images/health foods3.jpg"});
        category_images.put("energy bars",new String[] {"/resources/css/images/energy bars1.jpg","/resources/css/images/energy bars2.jpg","/resources/css/images/energy bars3.jpg"});
        category_images.put("apparel",new String[] {"/resources/css/images/apparel1.jpg","/resources/css/images/apparel2.jpg","/resources/css/images/apparel3.jpg"});
        category_images.put("men",new String[] {"/resources/css/images/men1.jpg","/resources/css/images/men2.jpg","/resources/css/images/men3.jpg"});
        category_images.put("women",new String[] {"/resources/css/images/women1.jpg","/resources/css/images/women2.jpg","/resources/css/images/women3.jpg"});
        category_images.put("kids",new String[] {"/resources/css/images/kids1.jpg","/resources/css/images/kids2.jpg","/resources/css/images/kids3.jpg"});
        category_images.put("wearables",new String[] {"/resources/css/images/wearables1.jpg","/resources/css/images/wearables2.jpg","/resources/css/images/wearables3.jpg"});
        category_images.put("sports",new String[] {"/resources/css/images/sports1.jpg","/resources/css/images/sports2.jpg","/resources/css/images/sports3.jpg"});
        category_images.put("soccer",new String[] {"/resources/css/images/soccer1.jpg","/resources/css/images/soccer2.jpg","/resources/css/images/soccer3.jpg"});
        category_images.put("basketball",new String[] {"/resources/css/images/basketball1.jpg","/resources/css/images/basketball2.jpg","/resources/css/images/basketball3.jpg"});
        category_images.put("baseball",new String[] {"/resources/css/images/baseball1.jpg","/resources/css/images/baseball2.jpg","/resources/css/images/baseball3.jpg"});
        category_images.put("football",new String[] {"/resources/css/images/football1.jpg","/resources/css/images/football2.jpg","/resources/css/images/football3.jpg"});
        category_images.put("home fitness",new String[] {"/resources/css/images/home fitness1.jpg","/resources/css/images/home fitness2.jpg","/resources/css/images/home fitness3.jpg"});
        category_images.put("weights",new String[] {"/resources/css/images/weights1.jpg","/resources/css/images/weights2.jpg","/resources/css/images/weights3.jpg"});
        category_images.put("machines",new String[] {"/resources/css/images/machines1.jpg","/resources/css/images/machines2.jpg","/resources/css/images/machines3.jpg"});
        category_images.put("yoga",new String[] {"/resources/css/images/yoga1.jpg","/resources/css/images/yoga2.jpg","/resources/css/images/yoga3.jpg"});
        category_images.put("boxing",new String[] {"/resources/css/images/boxing1.jpg","/resources/css/images/boxing2.jpg","/resources/css/images/boxing3.jpg"});
        //hashmap from lower categories to higher ones
        Hashtable<String,String> category_schema = new Hashtable<String,String>();
        category_schema.put("drinks","nutrition");
        category_schema.put("supplements","nutrition");
        category_schema.put("health foods","nutrition");
        category_schema.put("energy bars","nutrition");
        category_schema.put("nutrition","nutrition");
        category_schema.put("weights","home fitness");
        category_schema.put("machines","home fitness");
        category_schema.put("yoga","home fitness");
        category_schema.put("boxing","home fitness");
        category_schema.put("home fitness","home fitness");
        category_schema.put("men","apparel");
        category_schema.put("women","apparel");
        category_schema.put("kids","apparel");
        category_schema.put("wearables","apparel");
        category_schema.put("apparel","apparel");
        category_schema.put("soccer","sports");
        category_schema.put("basketball","sports");
        category_schema.put("baseball","sports");
        category_schema.put("football","sports");
        category_schema.put("sports","sports");
        //list of all products
        List<Product> products = productService.getProductList();
        //list of products that belong to category
        List<Product> category_products = new ArrayList<Product>();
        //loop through products and split its category list
        for(int i=0; i < products.size(); i++) {
            Product product = products.get(i);
            String[] categories;  //categories of products
            try {
                categories = product.getProductCategory().split(",");
            }
            catch (NullPointerException e) {continue;}
            //then loop through its categories to see if one matches
            //if it does, then add it to category_products
            for(int j=0; j < categories.length; j++) {
                if(categories[j].equals(categoryName)) {
                    category_products.add(product);
                    break;
                }
            }
        }
        model.addAttribute("products",category_products);
        model.addAttribute("images",category_images.get(categoryName));
        model.addAttribute("category", categoryName.toUpperCase());
        return "categoryList";
    }
}
