package com.niit.dao;

import java.io.IOException;

import com.niit.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);

	Cart validate(int cartId) throws IOException;

	boolean update(Cart cart);
}
