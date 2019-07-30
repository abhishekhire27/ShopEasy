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
import com.cdac.shopeasyapp.model.User;
import com.cdac.shopeasyapp.service.UserServiceImple;

@Controller
public class UserController {

	@Autowired
	private UserServiceImple userService;

	@RequestMapping(value = "/register.htm")
	public String userRegister(ModelMap model) {
		model.put("user", new User());
		return "User/registerform";
	}

	@RequestMapping(value = "success_reg.htm")
	public String addUser(User user, ModelMap model) {
		
		user.setUserPassword(Encryption.encrypt(user.getUserPassword()));
		
		userService.addUser(user);

		model.put("user", new User());

		return "User/login";
	}

	@RequestMapping(value = "login.htm")
	public String login(ModelMap model) {
		
		model.put("user", new User());

		return "User/login";
	}

	@RequestMapping(value = "home.htm")
	public String home(User user, ModelMap model, HttpSession session) {

		if(user.getRole() == "User")
			user.setUserPassword(Encryption.encrypt(user.getUserPassword()));
		
		User userObj = userService.checkUser(user);

		if (userObj != null) {
			session.setAttribute("user", userObj);

			List<SubCategory> list = userService.subCategoryList();
			model.put("sublist", list);

			if (userObj.getRole().equals("User")) {
				return "User/user_home";
			} else {
				return "Admin/admin_home";
			}

		}
		model.put("user", new User());
		return "User/login";
	}

	@RequestMapping(value = "user_productlist.htm")
	public String userProductList(@RequestParam("cat") int subCategoryId, ModelMap model, HttpSession session) {

		User user1 = (User) session.getAttribute("user");

		if (user1 != null) {
			List<Product> list = userService.listOfProduct(subCategoryId);
			model.put("productlist", list);
			model.put("userService", userService);

			return "User/user_productlist";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "order_history.htm")
	public String orderHistory(User user, ModelMap model, HttpSession session) {

		User user2 = (User) session.getAttribute("user");

		if (user2 != null) {
			model.put("user", user);
			return "User/order_history";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "cart.htm")
	public String cart(User user, ModelMap model, HttpSession session) {

		User user3 = (User) session.getAttribute("user");

		if (user3 != null) {
			model.put("user", user);
			return "User/cart";
		} else {
			return "User/login";
		}
	}

	@RequestMapping(value = "logout.htm")
	public String logout(ModelMap model, HttpSession session) {

		session.removeAttribute("user");
		session.invalidate();
		return "User/guest_home";
	}

	@RequestMapping(value = "description.htm")
	public String description(ModelMap model, HttpSession session) {

		return "User/description";
	}

	@RequestMapping(value = "addcart.htm")
	public String addToCart(ModelMap model, HttpSession session) {

		return "User/user_productlist";
	}

	@RequestMapping(value = "payment.htm")
	public String payment(ModelMap model, HttpSession session) {

		return "User/delivery_address";
	}
	
	@RequestMapping(value = "user_home.htm")
	public String userLink(ModelMap model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user != null) {
			
			model.put("user", user);
			
			List<SubCategory> list = userService.subCategoryList();
			model.put("sublist", list);
			
			return "User/user_home";
		} else {
			model.put("user", new User());
			return "User/login";
		}
	}

}
