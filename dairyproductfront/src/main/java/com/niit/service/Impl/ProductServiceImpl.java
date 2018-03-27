package com.niit.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import java.util.List;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDao productDao;

	public List<Product> getAllProduct() {
		return productDao.getAllProduct();
	}
//to get a single Product detail  from the entire product 
	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	// to add products
	public void addProduct(Product product) {
		productDao.addProduct(product);

	}

	// to delete the product
	public void deleteProduct(Product product) {

		productDao.deleteProduct(product);
	}

	// toe edit or say update the product

	public void editProduct(Product product) {

		productDao.editProduct(product);

	}

}
