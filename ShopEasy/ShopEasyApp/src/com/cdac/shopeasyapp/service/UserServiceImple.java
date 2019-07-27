package com.cdac.shopeasyapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.shopeasyapp.dao.UserDaoImple;
import com.cdac.shopeasyapp.model.Product;
import com.cdac.shopeasyapp.model.SubCategory;
import com.cdac.shopeasyapp.model.User;

@Service
public class UserServiceImple implements UserService {
	
	@Autowired
	private UserDaoImple userDao;

	@Override
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public User checkUser(User user) {
		User userObj = userDao.checkUser(user);
		return userObj;
	}

	@Override
	public List<Product> listOfProduct(String subCategory) {
		List<Product> list = userDao.listOfProduct(subCategory);
		return list;
		
	}

	@Override
	public void addProduct(Product product) {
		userDao.addProduct(product);
		
	}

	@Override
	public void addSubCategory(SubCategory subCategory) {
		userDao.addSubCategory(subCategory);
		
	}
	
	
	
}
