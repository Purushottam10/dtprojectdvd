package com.niit.dairyproductbanckent;

import java.util.Scanner;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.security.core.userdetails.User;

import com.niit.dao.CartDao;
import com.niit.dao.CartItemDao;
import com.niit.dao.CustomerDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Customer;
import com.niit.model.Product;

public class TestCase {

	Scanner sc = new Scanner(System.in);

	private static AnnotationConfigApplicationContext context;

	static CustomerDao customerDao;
	static ProductDao productDao;
	static CartDao cartDao;
	static CartItemDao cartItemDao;
	
	User user;
	Product product;
	Cart cart;
	CartItem cartitem;
//	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();

		customerDao = (CustomerDao) context.getBean("userDao");
		productDao = (ProductDao) context.getBean("productDao");
		cartItemDao = (CartItemDao) context.getBean("cartItemDao");
		cartDao = (CartDao) context.getBean("cartDao");
		
	}
//	@Test
		public void test1() {
			// Test For Adding New User
		 Customer customer = new Customer();
         customer.setUsername("puru");
         customer.setCustomerEmail("puru@gmail.com");
         customer.setBillingAddress(null);
         customer.setCart(cart);
         customer.setCustomerName("abxcc");
         customer.setEnabled(true);
         customer.setPassword(null);
         customer.setCustomerId(0);
        
         
			
		}


	
}
