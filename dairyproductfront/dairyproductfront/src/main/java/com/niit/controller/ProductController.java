package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {
@Autowired
ProductService productService;
@RequestMapping("viewProduct/{pid}")
public String viewProduct(@PathVariable int pid, Model model) {
System.out.println(pid);
	Product viewProduct=productService.getProductById(pid);
	model.addAttribute("product", viewProduct);
	return "viewProduct";
}


}
