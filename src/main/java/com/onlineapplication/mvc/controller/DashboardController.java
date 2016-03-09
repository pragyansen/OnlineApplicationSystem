package com.onlineapplication.mvc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlineapplication.model.PersonalDetails;
import com.onlineapplication.service.StudentService;

@Controller
@RequestMapping(value="/dashboard")
public class DashboardController {
	
	@Autowired
	StudentService studentService;

	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String home(){
		return "dashboard";
	}
	
	
	@ModelAttribute("personalBean")
	public PersonalDetails createPerosnalBean() {
		PersonalDetails personalBean = null;
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		personalBean = studentService.fetchPersonalDetails(email);
		if(null == personalBean)
			personalBean = new PersonalDetails();
		personalBean.setName(studentService.fetchStudentByEmail(email).getName());
		return personalBean;
	}
	
	@RequestMapping(value = "/personalDetails", method=RequestMethod.GET)
	public String personalDetails(){
		return "personalDetails";
	}
	
	@RequestMapping(value = "/educationalDetails", method=RequestMethod.GET)
	public String educationalDetails(){
		return "educationalDetails";
	}
	
	@RequestMapping(value = "/personalDetails", method=RequestMethod.POST)
	public String personalDetailsSubmit(@Valid PersonalDetails personalDetails, BindingResult result, Model model){
		
		System.out.println(personalDetails.getStudentCast());
		personalDetails.setEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		boolean status = studentService.savePersonalDetails(personalDetails);
		
		return "redirect:/dashboard/";
	}

	
}
