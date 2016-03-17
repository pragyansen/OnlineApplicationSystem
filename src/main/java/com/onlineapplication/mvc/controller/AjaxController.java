package com.onlineapplication.mvc.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onlineapplication.dao.AdminDashBoardDao;
import com.onlineapplication.mvc.bean.EducationalDetails;

@Controller
@RequestMapping(value = "/ajax")
public class AjaxController {

	@ResponseBody
	@RequestMapping(value = "/fetchSubjectList")
	public Object fetchSubjectList(){
		EducationalDetails educationalDetails = new EducationalDetails();
		return educationalDetails.getSubjects();
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/chartData", method = RequestMethod.GET)
	public Object fetchAdminData(){
		System.out.println("ajax from control panel");
		return new AdminDashBoardDao().getAdminDashBoardData();
	}	
	
}
