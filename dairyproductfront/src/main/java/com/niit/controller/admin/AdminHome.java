package com.niit.controller.admin;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller

public class AdminHome {
	@Autowired
	ProductService productService;

	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
	}
	 @RequestMapping("/admin/productInventory")
	    public String productInventory(Model model){
	        List<Product> products = productService.getAllProduct();
	        model.addAttribute("products", products);

	        return "productInventory";
	    }

	
	

}
