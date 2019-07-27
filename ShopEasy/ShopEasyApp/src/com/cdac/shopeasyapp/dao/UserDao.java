package com.cdac.shopeasyapp.dao;

import java.util.List;

import com.cdac.shopeasyapp.model.Product;
import com.cdac.shopeasyapp.model.SubCategory;
import com.cdac.shopeasyapp.model.User;

public interface UserDao {

	public void addUser(User user);
	public User checkUser(User user);
	public void addProduct(Product product);
	public void addSubCategory(SubCategory subCategory);
	public List<Product> listOfProduct(String subCategory);
}
