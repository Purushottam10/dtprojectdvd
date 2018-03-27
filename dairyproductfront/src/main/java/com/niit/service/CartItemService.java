package com.niit.service;

import com.niit.model.Cart;
import com.niit.model.CartItem;

public interface CartItemService {
	 boolean addCartItem(CartItem cartItem);

	    boolean removeCartItem(CartItem cartItem);

	    boolean removeAllCartItems(Cart cart);

	    CartItem getCartItemByProductId(int productId);
}
