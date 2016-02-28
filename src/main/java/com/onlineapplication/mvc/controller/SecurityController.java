package com.onlineapplication.mvc.controller;

import java.util.Map;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
	public String processRegister(@Valid RegisterBean registerBean, BindingResult result, Model model){
		logger.debug("LOG Success");

		registerBeanValidator.validate(registerBean, result);

		if (result.hasErrors()) {
			model.addAttribute("error", "error");
			return null;
		}

		if(studentService.studentAlreadyExists(registerBean)){
			String message = "Account already present. Please use forgot password to retrive";
			model.addAttribute("error", message);
			return "login";
		}

		Student student = studentService.saveNewStudent(registerBean);

/*		if(null != student)
			mailService.sendNewRegistrationMail(student);*/

		String message = "Registration Success, please check mail inbox for password";
		model.addAttribute("msg", message);

		return "login";

	}

	@RequestMapping(value = "/forgetPass/{type}", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> data(@PathVariable String type, @RequestBody Map myMap){
		logger.debug(type + " -- " + myMap.get("id"));
		String id = (String) myMap.get("id");
		if(null == id){
			return new ResponseEntity<String>(new String("Account doesn't exist"), HttpStatus.NOT_FOUND);
		}
		Student student = null;
		if("email".equalsIgnoreCase(type)){
			student = studentService.fetchStudentByEmail(id);
		} else if("phone".equalsIgnoreCase(type)){
			student = studentService.fetchStudentByPhone(id);
		}
		if(null == student){
			return new ResponseEntity<String>(new String("Account doesn't exist"), HttpStatus.NOT_FOUND);
		} else {
		//	mailService.sendForgotPasswordMail(student);
			return new ResponseEntity<String>(new String("Mail Sent to registered mail address"), HttpStatus.OK);
		}
	}

}
