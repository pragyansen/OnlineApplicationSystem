package com.onlineapplication.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onlineapplication.service.StudentService;

@Controller

@RequestMapping(path="/getFile")
public class FileDownloadController {

	@Autowired
	StudentService studentService;
	
	@ResponseBody
	@RequestMapping(path="/getImage/{type}", method=RequestMethod.GET)
	public byte[] getImageFile(@PathVariable String type){
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		if(null == email)
			return null;
		if(null != type){
			return studentService.fetchImageByType(email, type);
		}
		return null;
	}
	
}
