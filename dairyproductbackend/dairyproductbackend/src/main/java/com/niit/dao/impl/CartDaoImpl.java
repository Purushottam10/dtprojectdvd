package com.niit.dao.impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartDao;
import com.niit.dao.CustomerOrderDao;
import com.niit.model.Cart;

@Repository
@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	SessionFactory sessionFactory;

	@Autowired
	private CustomerOrderDao customerOrderDao;

	public Cart getCartById(int cartId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		return (Cart) session.get(Cart.class, cartId);
	}

	public boolean update(Cart cart) {
		// TODO Auto-generated method stub
		int cartId = cart.getCartId();
		double grandTotal = customerOrderDao.getCustomerOrderTotal(cartId);
		cart.setTotal(grandTotal);

		Session session = sessionFactory.getCurrentSession();
		 session.saveOrUpdate(cart);
		return false;
	}

	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
		if (cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId + "");
		}

		update(cart);
		return cart;
	}

}
