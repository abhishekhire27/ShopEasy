package com.cdac.shopeasy.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.orm.hibernate4.HibernateCallback;

import com.cdac.shopeasy.model.user;
@Repository
public class UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void save(user u) {
		
		hibernateTemplate.execute(new HibernateCallback<List<user>>(){
			public List<user> doInHibernate(Session session) throws HibernateException{
				Transaction t = session.beginTransaction();
				session.save(u);
				t.commit();
				session.close();
				session.flush();
				return null;
			}
		});
		
	}
	
	public void deleteById(final int userId) {
		hibernateTemplate.execute(new HibernateCallback<List<user>>() {
			public List<user> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.delete(new user(userId));
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	public void update(final user user) {
		
		hibernateTemplate.execute(new HibernateCallback<List<user>>() {
			public List<user> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				session.update(user);
				t.commit();
				session.flush();
				session.close();
				return null;
			}
		});
	}

	public List<user> getAll() {
		List<user> ul = hibernateTemplate.execute(new HibernateCallback<List<user>>() {
			public List<user> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from user");
				List<user> userList = q.list();
				t.commit();
				session.flush();
				session.close();
				return userList;
			}
		});
		return ul;
	}
	
	public boolean validateUser(user user) {
		List<user> ul = hibernateTemplate.execute(new HibernateCallback<List<user>>() {
			public List<user> doInHibernate(Session session) throws HibernateException {
				Transaction t = session.beginTransaction();
				Query q = session.createQuery("from user where userName = ? and userPass = ?");
				q.setString(0, user.getUserName());
				q.setString(1, user.getUserPass());
				List<user> userList = q.list();
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

}
