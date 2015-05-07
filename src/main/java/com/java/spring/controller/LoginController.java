package com.java.spring.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="/hello", method = RequestMethod.GET)
	public String printWelcome(Model model,Principal principal){
		System.out.println("*************LoginController Called ****************");
		String name=principal.getName();
		model.addAttribute("username", name);
		model.addAttribute("message", "Spring Security custom form Example");
		return "HelloPage";
	}
	@RequestMapping(value="/login" , method= RequestMethod.GET)
	public String login(Model model){
		return "Login";
	}
	@RequestMapping(value="/loginfailed" , method= RequestMethod.GET)
	public String loginfailed(Model model){
		return "Login";
	}
	@RequestMapping(value="/logout" , method= RequestMethod.GET)
	public String logout(Model model){
		return "Login";
	}

	@RequestMapping(value="/*" , method= RequestMethod.GET)
	public String home(Model model){
		return "Home";
	}
}
