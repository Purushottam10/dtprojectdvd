package com.niit.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerOrderDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.CustomerOrder;
import com.niit.service.CartService;
import com.niit.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl  implements CustomerOrderService{

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	@Autowired 
	private CartService cartService;
	public boolean addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		 customerOrderDao.addCustomerOrder(customerOrder);
		return false;
	}

	public double getCustomerOrderTotal(int cartId) {
		// TODO Auto-generated method stub
		  double total = 0;
	        Cart cart = cartService.getCartById(cartId);
	        List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems){
	            total += item.getTotalPrice();
	        }

	        return total;
	}

}
