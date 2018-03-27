package com.niit.dao;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao {
 public List<Product> getAllProduct();
 Product getProductById(int productId);
void addProduct(Product product);
 void deleteProduct(Product product);
 void editProduct(Product product);
}
