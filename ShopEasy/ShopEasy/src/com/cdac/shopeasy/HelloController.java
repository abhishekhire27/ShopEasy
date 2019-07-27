package com.cdac.shopeasy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.cdac.shopeasy.model.user;
import com.cdac.shopeasy.service.UserService;

@Controller
public class HelloController {
	
	@Autowired
	private UserService userService;
	
@RequestMapping(value="/hello.htm")
public String sayHello(ModelMap model) {
	model.put("msg", "Bye");
	return "success";
}

@RequestMapping(value = "/prep_login_form.htm")
public String prepLoginForm(ModelMap model) {
	
	model.put("user", new user());
	
	return "index";
}

@RequestMapping(value = "/prep_reg_form.htm")
public String prepRegForm(ModelMap model) {
	model.put("user", new user());
	return "reg_form";
}

	@RequestMapping(value = "/reg.htm")
	public String register(user user,ModelMap model) {
		userService.createUser(user);
		model.put("user", new user());
		return "index";
}
	
	@RequestMapping(value = "/login.htm")
	public String login(user user,ModelMap model,HttpSession session) {
		
		boolean b = userService.checkUser(user);
		if(b) {
			session.setAttribute("u", user);
			return "home";
		}
		model.put("user", new user());
		return "index";
	}
	
	@RequestMapping(value = "/user_list.htm")
	public String userList(ModelMap model) {
		List<user> ulist = userService.selectAllUsers();
		model.put("ul", ulist);
		return "user_list";
	}
	
	@RequestMapping(value = "/delete_user.htm")
	public String deleteUser(@RequestParam int userId,ModelMap model) {
		userService.removeUser(userId);
		List<user> ulist = userService.selectAllUsers();
		model.put("ul", ulist);
		return "user_list";
	}
}
