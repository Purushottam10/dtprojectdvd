package com.niit.service;

import com.niit.model.CustomerOrder;

public interface CustomerOrderService {
	boolean addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderTotal(int cartId);
}
