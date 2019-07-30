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
	public List<Product> listOfProduct(int subCategoryId) {
		List<Product> list = userDao.listOfProduct(subCategoryId);
		return list;
		
	}
	
	@Override
	public List<SubCategory> subCategoryList() {
		List<SubCategory> list = userDao.subCategoryList();
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

	@Override
	public void addToCart(int productId, User user) {
		System.out.println("Reached");
		userDao.addToCart(productId, user);
		
	}

	@Override
	public void deleteSubcategory(int subCategoryId) {
		userDao.deleteSubcategory(subCategoryId);
		
	}

	
	
	
	
	
	
	
}
