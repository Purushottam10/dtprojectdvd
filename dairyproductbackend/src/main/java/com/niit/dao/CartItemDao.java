package com.niit.dao;

import com.niit.model.Cart;
import com.niit.model.CartItem;

public interface CartItemDao {

 boolean addCartItem(CartItem cartItem);

boolean removeCartItem(CartItem cartItem);

boolean removeAllCartItem(Cart cart);

CartItem getCartItemByProductId(int productId);

}
