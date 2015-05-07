package com.java.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class HelloController {
    @RequestMapping("/welcome")
	public ModelAndView HelloController(){
		ModelAndView model =new ModelAndView("HelloPage");
		model.addObject("msg","Hello world Spring MVC");
		return model;
	}

     @RequestMapping("/hi")
     public ModelAndView HiController(){
		ModelAndView model =new ModelAndView("HelloPage");
		model.addObject("msg","Hi world");
		return model;
    	}
}
