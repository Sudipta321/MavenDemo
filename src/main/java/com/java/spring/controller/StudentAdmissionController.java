package com.java.spring.controller;

import java.security.Principal;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.java.spring.model.Student;
@Controller
//@RequestMapping("/Spring")
public class StudentAdmissionController {
	@RequestMapping(value="/admissionForm", method= RequestMethod.GET)
	public ModelAndView getAdmissionForm(Principal principal){
		String name=principal.getName();
		ModelAndView model = new ModelAndView("AdmissionForm");
		model.addObject("username", name);
		return model;
	}
	//adding common attribute
	@ModelAttribute
	public void addCommonObjects( Model model){
		model.addAttribute("headerMessagesg","Indian Institute of Technology,India");

	}

	@RequestMapping(value="/submitAdmissionForm", method=RequestMethod.POST)
    public ModelAndView submitAdmissionForm(@ModelAttribute("student1") Student student1, BindingResult result){
		if(result.hasErrors()){
			ModelAndView mv = new ModelAndView("AdmissionForm");
			return mv;
		}
    	ModelAndView model =new ModelAndView("AdmissionSuccess");
    	return model;
    }
}
