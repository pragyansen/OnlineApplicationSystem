package com.onlineapplication.mvc.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/controlpanel")
public class ControlPanelController {

	@RequestMapping(value = "/", method=RequestMethod.GET)
	public String home(){
		return "controlPanel";
	}
	
	
}
