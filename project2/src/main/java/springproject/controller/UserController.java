package springproject.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import springproject.model.User;
import springproject.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository ur ;
	@RequestMapping("/user")
	public String welcome() {
		
		return "welcome";
		
	}
	
	@PostMapping("/login")
	public String check(@RequestParam String username , @RequestParam String password , Model model)
	{
		User u =ur.findUserByRoleEndsWith(username, password, "%USER");
		if(u!=null) {
		
		model.addAttribute("user", u);
		
		return"entry";}
		
		else
			return"welcome";
	}
	
	@RequestMapping("/admin")
	public String admin()
	{
		
		return"admin_login";
	}
	
	
	
	@RequestMapping("/adminlogin")
	public String admin_check(@RequestParam String username , @RequestParam String password , Model model)
	{
		
		User u =ur.findUserByRoleEndsWith(username, password, "%ADMIN");
		if(u!=null) {
		
		model.addAttribute("user", u);
		
		return"AdminHome";}
		
		else
			return"admin_login";
	}
	

	
	
	
}
