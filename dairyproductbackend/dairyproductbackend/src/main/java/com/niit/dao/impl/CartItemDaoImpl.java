package com.niit.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CartItemDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {
 @Autowired
 SessionFactory sessionFactory;
	public boolean addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
		return false;
	}

	public boolean removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
		return false;
	}

	public boolean removeAllCartItem(Cart cart) {
		// TODO Auto-generated method stub
		 List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems){
	            removeCartItem(item);
	        }
		return false;
	}

	public CartItem getCartItemByProductId(int productId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        session.flush();

        return (CartItem) query.uniqueResult();
		
	}

}
