package com.vgipl.empdata.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.vgipl.empdata.model.User;
import com.vgipl.empdata.service.UserServiceImpl;

@Controller
public class HomeController {
	
	private UserServiceImpl userService;
	
	HomeController(UserServiceImpl userService){
		this.userService = userService;
	}
	
	@GetMapping("/home")
	public static String viewHomePage() {
		return "home";
	}
	
	@GetMapping("/addUser")
	public static String viewAddUserPage() {
		return "addUser";
	}
	
	@PostMapping("/addUser")
	public @ResponseBody String addNewUser(@RequestBody User user){
		User savedUser = userService.addNewUser(user);
		return savedUser.toString();
	}
}
