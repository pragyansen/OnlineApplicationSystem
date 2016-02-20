package com.onlineapplication.mvc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.onlineapplication.mvc.bean.RegisterBean;
import com.onlineapplication.mvc.validator.RegisterBeanValidator;



@Controller
@SessionAttributes("registerBean")
public class SecurityController {
	
	@Autowired
	RegisterBeanValidator registerBeanValidator;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
		@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}
		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");
		return model;
	}
	
	@ModelAttribute("registerBean")
	public RegisterBean createRegisterBean() {
		return new RegisterBean();
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void register(){
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String processRegister(@Valid RegisterBean registerBean, BindingResult result,
			Model model, RedirectAttributes redirectAttrs){
		System.err.println("I am called");
		registerBeanValidator.validate(registerBean, result);
		System.err.println(registerBean.getEmail());
		
		if (result.hasErrors()) {
			model.addAttribute("error", "error");
			return null;
		}
		String message = "Registration Success";
		
		model.addAttribute("msg", message);
		return "login";
		
	}
	
}
