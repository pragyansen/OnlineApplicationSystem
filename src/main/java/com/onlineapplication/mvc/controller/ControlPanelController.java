package com.onlineapplication.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path="/controlpanel")
public class ControlPanelController {

	@RequestMapping(path="/")
	public String controlPanelHome(){
		return "controlPanel";
	}
	
}
