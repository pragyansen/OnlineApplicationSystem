package com.onlineapplication.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onlineapplication.dao.AdminDashBoardDao;

@Controller
@RequestMapping(value = "/ajax")
public class AjaxController {

	/*@ResponseBody
	@RequestMapping(value = "/fetchSubjectList")
	public Object fetchSubjectList(){
		EducationalDetails educationalDetails = new EducationalDetails();
		return educationalDetails.getSubjects();
	}*/
	
	
	@ResponseBody
	@RequestMapping(value = "/chartData", method = RequestMethod.GET)
	public Object fetchAdminData(){
		System.out.println("ajax from control panel");
		return new AdminDashBoardDao().getAdminDashBoardData();
	}	
	
}
