package com.cdac.shopeasyapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.shopeasyapp.model.Product;
import com.cdac.shopeasyapp.model.SubCategory;
import com.cdac.shopeasyapp.service.UserService;

@Controller
public class AdminController {
	
	@Autowired
	UserService userService;

	@RequestMapping(value="manage_product.htm")
	public String manageProduct(ModelMap model, HttpSession session) {
	
		return "Admin/manage_product";
	}
	
	@RequestMapping(value="manage_subCategory.htm")
	public String manageSubCategory(ModelMap model, HttpSession session) {
	
		List<SubCategory> list = userService.subCategoryList();
		
		model.put("subcat", list);
		
		return "Admin/manage_subCategory";
	}
	
	@RequestMapping(value="reg_product.htm")
	public String regProduct(ModelMap model, HttpSession session) {
		
		List<SubCategory> list = userService.subCategoryList();
		
		model.put("subcat", list);	
		model.put("product", new Product());
	
		return "Admin/add_product";
	}
	
	@RequestMapping(value="reg_subCategory.htm")
	public String regSubCategory(ModelMap model, HttpSession session) {
		
		model.put("subCategory", new SubCategory());
	
		return "Admin/add_subCategory";
	}
	
	@RequestMapping(value="add_product.htm")
	public String addProduct(Product product, ModelMap model, HttpSession session) {
		
		userService.addProduct(product);
	
		return "Admin/manage_product";
	}
	
	@RequestMapping(value="add_subCategory.htm")
	public String addSubCategory(SubCategory subCategory, ModelMap model, HttpSession session) {
		
		userService.addSubCategory(subCategory);
	
		return "Admin/manage_product";
	}
	
	@RequestMapping(value="admin_productlist.htm")
	public String productList(@RequestParam("cat") int subCategoryId, ModelMap model, HttpSession session) {
		
		List<Product> list= userService.listOfProduct(subCategoryId);
		model.put("productlist", list);
	
		return "Admin/admin_productlist";
	}
	
	
}
