package com.java.spring.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloControllerOne {

	/* @RequestMapping("/welcome/{countryName}/{userName}")//countryName & userName can be dyamanic any string value
		public ModelAndView HelloController(@PathVariable("userName") String name,
				@PathVariable("countryName") String cname){
			ModelAndView model =new ModelAndView("HelloPage");
			model.addObject("msg","Hello "+ name+"You are form "+cname);
			return model;
		}*/
	@RequestMapping("/welcome/{countryName}/{userName}")//countryName & userName can be dyamanic any string value
	public ModelAndView HelloController(@PathVariable Map<String,String> pathVar)
	{   
		String name = pathVar.get("userName");
		String cname = pathVar.get("countryName");
		ModelAndView model =new ModelAndView("HelloPage");
		model.addObject("msg","Hello "+ name+"You are form "+cname);
		return model;
	}
}
