package com.niit.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.service.CartItemService;

@Component
@Service
public class CartItemServiceImpl implements CartItemService{

	@Autowired
	CartItemDao cartItemDao;
	public boolean addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		 cartItemDao.addCartItem(cartItem);
		return false;
	}

	public boolean removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		 cartItemDao.removeCartItem(cartItem);
		return false;
	}

	public boolean removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		 cartItemDao.removeAllCartItem(cart);
		return false;
	}

	public CartItem getCartItemByProductId(int productId) {
		// TODO Auto-generated method stub
		return cartItemDao.getCartItemByProductId(productId);
		
	}

}
