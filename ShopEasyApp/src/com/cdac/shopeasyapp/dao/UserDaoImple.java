package com.cdac.shopeasyapp.dao;

import java.util.List;

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
		
		if(!pl.isEmpty()) {
			return pl;
		}	
		return null;
		
//		SubCategory s1 = new SubCategory("101","Men","1");
//		SubCategory s2 = new SubCategory("102","Women","1");
//		
//		Product p1 = new Product("10001","Shirt",100000,25,"abc");
//		Product p2 = new Product("10002","Pant",100000,20,"abc");
//		Product p3 = new Product("10003","Formals",100000,15,"abc");
//		Product p4 = new Product("10004","Top",100000,35,"xyz");
//		Product p5 = new Product("10005","Skirt",100000,10,"xyz");
//		Product p6 = new Product("10006","Tracks",100000,30,"xyz");
//		
//		p1.setSubCategory(s1);
//		p2.setSubCategory(s1);
//		p3.setSubCategory(s1);
//		p4.setSubCategory(s2);
//		p5.setSubCategory(s2);
//		p6.setSubCategory(s2);
//		
//		return null;
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
	
	
	
	

}
