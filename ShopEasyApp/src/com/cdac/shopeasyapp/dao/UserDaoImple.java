package com.cdac.shopeasyapp.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.imageio.spi.ServiceRegistry;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.shopeasyapp.model.Product;
import com.cdac.shopeasyapp.model.SubCategory;
import com.cdac.shopeasyapp.model.User;

@Repository
public class UserDaoImple implements UserDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	Set<Product> set = new HashSet<>();

	@Override
	public void addUser(User user) {
		hibernateTemplate.execute(new HibernateCallback<List<User>>(){
			public List<User> doInHibernate(Session session) throws HibernateException{
				Transaction t = session.beginTransaction();
				session.save(user);
				t.commit();
				session.close();
				session.flush();
				return null;
			}
		});
	}

	@Override
	public User checkUser(User user) {
		List<User> ul = hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from User where user_Id = ? and user_Password = ?");

				q.setString(0, user.getUserId());
				q.setString(1, user.getUserPassword());
				List<User> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		
		if(!ul.isEmpty()) {
			return ul.get(0);
		}	
		return null;
	}

	@Override
	public List<Product> listOfProduct(int subCategoryId) {
		
		List<Product> pl = hibernateTemplate.execute(new HibernateCallback<List<Product>>() {
			public List<Product> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				
				Query q = session.createQuery("from Product where subCategoryId=?");
				q.setInteger(0, subCategoryId);
				
				List<Product> prodList = q.list();
				t.commit();
				session.flush();
				session.close();
				return prodList;
			}
		});
		
		return pl;
	}
	
	@Override
	public List<SubCategory> subCategoryList() {
		List<SubCategory> ul = hibernateTemplate.execute(new HibernateCallback<List<SubCategory>>() {
			public List<SubCategory> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from SubCategory");
				List<SubCategory> SubCategoryList = q.list();
				t.commit();
				session.flush();
				session.close();
				return SubCategoryList;
			}
		});
		return ul;
	}

	@Override
	public void addProduct(Product product) {
		hibernateTemplate.execute(new HibernateCallback<List<Product>>(){
			public List<Product> doInHibernate(Session session) throws HibernateException{
				Transaction t = session.beginTransaction();
				session.save(product);
				t.commit();
				session.close();
				session.flush();
				return null;
			}
		});
		
	}

	@Override
	public void addSubCategory(SubCategory subCategory) {
		
		hibernateTemplate.execute(new HibernateCallback<List<SubCategory>>(){
			public List<SubCategory> doInHibernate(Session session) throws HibernateException{
				Transaction t = session.beginTransaction();
				session.save(subCategory);
				t.commit();
				session.close();
				session.flush();
				return null;
			}
		});
		
	}
	
	

	@Override
	public void deleteSubcategory(int subCategoryId) {
		
		Session session = this.sessionFactory.openSession();
		SubCategory subCategory = (SubCategory)session.get(SubCategory.class, subCategoryId);
		
		hibernateTemplate.execute(new HibernateCallback<List<SubCategory>>() {
			public List<SubCategory> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(subCategory);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
	}

	@Override
	public void addToCart(int productId, User user) {
		
		Session session = this.sessionFactory.openSession();
		Product product = (Product)session.get(Product.class, productId);
		
		//set.add(product);
		//user.setProducts(set);
		
		String userId = user.getUserId();
		
		hibernateTemplate.execute(new HibernateCallback<List<User>>(){
			public List<User> doInHibernate(Session session) throws HibernateException{
				Transaction t = session.beginTransaction();
				
				SQLQuery q = session.createSQLQuery("Insert INTO cart_products VALUES(?,?)");
				q.setInteger(0, productId);
				q.setString(1, userId);
				
				
				t.commit();
				session.close();
				session.flush();
				return null;
			}
		});
		
	}

	@Override
	public boolean checkUser(String userId) {
		List<User> ul = hibernateTemplate.execute(new HibernateCallback<List<User>>() {
			public List<User> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from User where user_Id = ?");

				q.setString(0, userId);
				List<User> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		
		if(!ul.isEmpty()) {
			return true;
		}	
		return false;
	}

	@Override
	public String sendThanksEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	

}
