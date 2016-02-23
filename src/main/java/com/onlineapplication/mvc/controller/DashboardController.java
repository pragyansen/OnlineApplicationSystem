package com.onlineapplication.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlineapplication.model.Student;

@Controller
@RequestMapping(value="/dashboard")
public class DashboardController {

	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String home(){
		return "dashboard";
	}
	
	

	
}
