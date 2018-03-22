package com.niit.service;

import java.util.List;

import com.niit.model.Product;

public interface ProductService {
	public List<Product> getAllProduct();
	Product getProductById(int productId);
    void deleteProduct(Product product);
	void addProduct(Product product);
	void editProduct(Product product);
	
	
}
