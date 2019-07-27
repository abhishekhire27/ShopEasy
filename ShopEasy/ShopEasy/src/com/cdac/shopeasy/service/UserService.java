package com.cdac.shopeasy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.shopeasy.dao.UserDao;
import com.cdac.shopeasy.model.user;
@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public void createUser(user user) {
		userDao.save(user);
	}
	
	public void removeUser(int userId) {
		userDao.deleteById(userId);
	}
	
	public void modifyUser(user user) {
		userDao.update(user);
	}
	
	public List<user> selectAllUsers() {
		return userDao.getAll();
	}
	
	public boolean checkUser(user user) {
		return userDao.validateUser(user);
	}
}
