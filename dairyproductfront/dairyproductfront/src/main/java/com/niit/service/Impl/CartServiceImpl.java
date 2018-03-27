package com.niit.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
import com.niit.service.CartService;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	CartDao cartDao;
	public Cart getCartById(int cartId) {
		// TODO Auto-generated method stub
		return cartDao.getCartById(cartId);
	}

	public boolean update(Cart cart) {
		// TODO Auto-generated method stub
		 cartDao.update(cart);
		return false;
	}

}
