package com.cdac.shopeasyapp.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
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
			model.put("user", new User());
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
			model.put("user", new User());
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
			model.put("user", new User());
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
			model.put("user", new User());
			return "User/login";
		}
	}

	@RequestMapping(value = "add_product.htm")
	public String addProduct(@RequestParam("image") MultipartFile image, Product product, ModelMap model, HttpSession session) {
		
		User user = (User) session.getAttribute("user");

		if (user != null) {
			
			if(image!=null && !image.isEmpty()) {
				Path path = Paths.get("C:\\Users\\DAC-13\\Desktop\\ShopEasy\\ShopEasyApp\\WebContent\\images\\"+ image +".jpg");
				
				product.setPath("images\\"+ image +".jpg");
				
				try {
					image.transferTo(new File(path.toString()));
				}
				catch(IllegalStateException e){
					e.printStackTrace();
				}
				catch(IOException e) {
					e.printStackTrace();
				}
			}
			
			userService.addProduct(product);

			return "Admin/manage_product";
		} else {
			model.put("user", new User());
			return "User/login";
		}
	}

	@RequestMapping(value = "add_subCategory.htm")
	public String addSubCategory(@RequestParam("image") MultipartFile image, SubCategory subCategory, ModelMap model, HttpSession session) {
		User user = (User) session.getAttribute("user");

		if (user != null) {
			
			if(image!=null && !image.isEmpty()) {
				Path path = Paths.get("C:\\Users\\DAC-13\\Desktop\\ShopEasy\\ShopEasyApp\\WebContent\\images\\"+ image +".jpg");
				
				subCategory.setSubcatpath("images\\"+ image +".jpg");
				
				try {
					image.transferTo(new File(path.toString()));
				}
				catch(IllegalStateException e){
					e.printStackTrace();
				}
				catch(IOException e) {
					e.printStackTrace();
				}
			}
			
			userService.addSubCategory(subCategory);

			return "Admin/manage_product";
		} else {
			model.put("user", new User());
			return "User/login";
		}
	}

	@RequestMapping(value = "admin_productlist.htm")
	public String productList(@RequestParam("cat") int subCategoryId, ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {
			List<Product> list1 = userService.listOfProduct(subCategoryId);
			
			System.out.println(list1.isEmpty());
			
			model.put("productlist", list1);
			model.put("service", userService);
			
			if(!list1.isEmpty()==true){
				return "Admin/admin_productlist";
			}
			else {
				List<SubCategory> list = userService.subCategoryList();
				model.put("sublist", list);
				model.put("user", user);
				return "Admin/admin_home";
			}

			
		} else {
			model.put("user", new User());
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
			model.put("user", new User());
			return "User/login";
		}
	}
	
	@RequestMapping(value = "admin_home.htm")
	public String adminHome(ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {
			List<SubCategory> list = userService.subCategoryList();
			model.put("sublist", list);
			model.put("user", user);

			return "Admin/admin_home";
		} else {
			model.put("user", new User());
			return "User/login";
		}
	}

}
