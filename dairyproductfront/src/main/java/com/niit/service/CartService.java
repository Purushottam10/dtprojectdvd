package com.niit.service;

import com.niit.model.Cart;

public interface CartService {
	 Cart getCartById(int cartId);
	 boolean update(Cart cart);
}
