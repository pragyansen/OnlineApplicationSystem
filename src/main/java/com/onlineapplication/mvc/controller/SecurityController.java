package com.onlineapplication.mvc.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.onlineapplication.model.Student;
import com.onlineapplication.mvc.bean.RegisterBean;
import com.onlineapplication.mvc.validator.RegisterBeanValidator;
import com.onlineapplication.service.MailService;
import com.onlineapplication.service.StudentService;


@Controller
public class SecurityController {
	
	@Autowired
	RegisterBeanValidator registerBeanValidator;
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	MailService mailService;
	
	private static final Logger logger = Logger.getLogger(SecurityController.class);
	
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
			Model model, HttpSession session){
		logger.debug("LOG Success");
		
		registerBeanValidator.validate(registerBean, result);
		
		if (result.hasErrors()) {
			model.addAttribute("error", "error");
			return null;
		}
		String message = "Registration Success, please check mail inbox for password";
		model.addAttribute("msg", message);
		
		Student student = studentService.saveNewStudent(registerBean);
		
		if(null != student)
			mailService.sendMail(student);
		
		return "login";
		
	}
	
/*	
	
	@RequestMapping(value = "/dd")
	@ResponseBody
	public ResponseEntity<Student> data(){
		return new ResponseEntity<Student>(new Student(), HttpStatus.OK);
	}*/
	
}
