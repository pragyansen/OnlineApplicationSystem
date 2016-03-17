package com.onlineapplication.mvc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onlineapplication.model.EducationalDetails;
import com.onlineapplication.model.Subject;

@Controller
@RequestMapping(value = "/ajax")
public class AjaxController {

	@ResponseBody
	@RequestMapping(value = "/fetchSubjectList")
	public Object fetchSubjectList(){
		EducationalDetails educationalDetails = new EducationalDetails();
		return educationalDetails.getSubjects();
	}
	
}
