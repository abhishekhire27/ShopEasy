package com.cdac.shopeasyapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cdac.shopeasyapp.model.Product;
import com.cdac.shopeasyapp.model.SubCategory;
import com.cdac.shopeasyapp.model.User;
import com.cdac.shopeasyapp.service.UserService;

@Controller
public class AdminController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "manage_product.htm")
	public String manageProduct(ModelMap model, HttpSession session) {
		User user = (User) session.getAttribute("user");

		if (user != null) {
			return "Admin/manage_product";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "manage_subCategory.htm")
	public String manageSubCategory(ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {
			List<SubCategory> list = userService.subCategoryList();

			model.put("subcat", list);

			return "Admin/manage_subCategory";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "reg_product.htm")
	public String regProduct(ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {
			List<SubCategory> list = userService.subCategoryList();

			model.put("subcat", list);
			model.put("product", new Product());

			return "Admin/add_product";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "reg_subCategory.htm")
	public String regSubCategory(ModelMap model, HttpSession session) {
		User user = (User) session.getAttribute("user");

		if (user != null) {
			model.put("subCategory", new SubCategory());

			return "Admin/add_subCategory";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "add_product.htm")
	public String addProduct(Product product, ModelMap model, HttpSession session) {
		
		User user = (User) session.getAttribute("user");

		if (user != null) {
			
		//	System.out.println("HRERERERERERERER"+product);
//			product.setProductName(productName);
//			product.setPrice(price);
//			product.setQuantityAvailable(quantity);
//			product.setDescription(description);
//			product.setile(file);
//			product.setSubCategoryId(subcatid);
//			
			
			userService.addProduct(product);

			return "Admin/manage_product";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "add_subCategory.htm")
	public String addSubCategory(SubCategory subCategory, ModelMap model, HttpSession session) {
		User user = (User) session.getAttribute("user");

		if (user != null) {
			userService.addSubCategory(subCategory);

			return "Admin/manage_product";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "admin_productlist.htm")
	public String productList(@RequestParam("cat") int subCategoryId, ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {
			List<Product> list = userService.listOfProduct(subCategoryId);
			model.put("productlist", list);

			return "Admin/admin_productlist";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "delete_subCategory.htm")
	public String deleteSubcategory(@RequestParam("subcatid") int subCategoryId, ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {

			userService.deleteSubcategory(subCategoryId);

			List<SubCategory> list = userService.subCategoryList();
			model.put("subcat", list);

			return "Admin/manage_subCategory";
		} else {
			return "User/login";
		}
	}

}
