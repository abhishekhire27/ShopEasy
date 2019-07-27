package com.cdac.shopeasyapp.service;

import com.cdac.shopeasyapp.model.User;
import com.cdac.shopeasyapp.model.Product;
import com.cdac.shopeasyapp.model.SubCategory;

import java.util.List;


public interface UserService {
	
	public void addUser(User user);
	public User checkUser(User user);
	public void addProduct(Product product);
	public void addSubCategory(SubCategory subCategory);
	public List<Product> listOfProduct(String subCategory);

}
