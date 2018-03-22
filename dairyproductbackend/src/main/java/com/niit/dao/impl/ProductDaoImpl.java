package com.niit.dao.impl;

import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	public List<Product> getAllProduct() {
		List<Product> allProduct = new ArrayList<Product>();
		Query q = sessionFactory.openSession().createQuery("from Product");
		allProduct = q.list();
		return allProduct;
	}

	public Product getProductById(int pid) {

		try

		{
			Criteria criteria = sessionFactory.openSession().createCriteria(Product.class);

			criteria.add(Restrictions.eq("pid", pid));
			Product product = (Product) criteria.uniqueResult();

			return product;

		} catch (Exception ex) {
			System.out.println("no Product Found ");
			return null;

		}

	}

	public void addProduct(Product product) {
	try
	{
		Session session = sessionFactory.openSession();
        session.saveOrUpdate(product);
        System.out.println(product.getName());
        session.flush();
        session.close();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	}
	public void deleteProduct(Product product) {
		
        Session session = sessionFactory.openSession();
        session.delete(product);
        session.flush();
	}

	public void editProduct(Product product) {
		
		Session session = sessionFactory.openSession();
        session.saveOrUpdate(product);
        session.flush();
	}

}
