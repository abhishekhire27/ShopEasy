package com.cdac.shopeasyapp.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.shopeasyapp.model.SubCategory;
import com.cdac.shopeasyapp.model.User;
import com.cdac.shopeasyapp.service.UserServiceImple;


@Controller
public class UserController {
	
	@Autowired
	private UserServiceImple userService;
	
	@RequestMapping(value="/register.htm")
	public String userRegister(ModelMap model) {
		model.put("user", new User());
		return "User/registerform";
	}
	
	@RequestMapping(value="success_reg.htm")
	public String addUser(User user, ModelMap model) {
		
		userService.addUser(user);
		
		model.put("user", new User());
		
		return "User/login";
	}
	
	@RequestMapping(value="login.htm")
	public String login(ModelMap model) {
		
		model.put("user", new User());
		
		return "User/login";
	}
	
	
	
	@RequestMapping(value="home.htm")
	public String home(User user, ModelMap model, HttpSession session) {
		
		User userObj = userService.checkUser(user);
		
		if(userObj!= null) {
			session.setAttribute("user", userObj);
			List<SubCategory> list = userService.subCategoryList();
			model.put("sublist", list);
			
			if(userObj.getRole().equals("User")) {
				return "User/user_home";
			}
			else {
				return "Admin/admin_home";
			}
			
		}
		model.put("user", new User());
		return "User/login";
	}
	
	@RequestMapping(value="user_productlist.htm")
	public String userProductList(@RequestParam("cat") String category ,ModelMap model, HttpSession session) {
		

		
		return "User/user_productlist";
	}
	
	@RequestMapping(value="order_history.htm")
	public String orderHistory(User user, ModelMap model, HttpSession session) {
		
		model.put("user", user);
		return "User/order_history";
	}
	
	@RequestMapping(value="cart.htm")
	public String cart(User user, ModelMap model, HttpSession session) {
		
		model.put("user", user);
		return "User/cart";
	}
	
	@RequestMapping(value="logout.htm")
	public String logout(User user, ModelMap model, HttpSession session) {
		
	
		return "User/guest_home";
	}
	
	@RequestMapping(value="description.htm")
	public String description(ModelMap model, HttpSession session) {
		
	
		return "User/description";
	}
	
	@RequestMapping(value="addcart.htm")
	public String addToCart(ModelMap model, HttpSession session) {
		
	
		return "User/user_productlist";
	}
	

	@RequestMapping(value="payment.htm")
	public String payment(ModelMap model, HttpSession session) {
		
	
		return "User/delivery_address";
	}

	
}
