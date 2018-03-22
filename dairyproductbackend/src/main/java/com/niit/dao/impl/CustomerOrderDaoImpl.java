package com.niit.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerOrderDao;
import com.niit.model.CustomerOrder;
import com.niit.service.CustomerOrderService;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{

	@Autowired
	SessionFactory sessionFactory;
	public boolean addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		 Session session = sessionFactory.openSession();
	        session.saveOrUpdate(customerOrder);
	        session.flush();
		return false;
	}

	

}
