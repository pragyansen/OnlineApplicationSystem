package com.onlineapplication.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.onlineapplication.model.EducationalDetails;
import com.onlineapplication.model.PersonalDetails;
import com.onlineapplication.model.Subject;
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
	
	@RequestMapping(value = "/personalDetails", method=RequestMethod.POST)
	public String personalDetailsSubmit(@Valid PersonalDetails personalDetails, BindingResult result, Model model){
		
		System.out.println(personalDetails.getStudentCast());
		personalDetails.setEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		boolean status = studentService.savePersonalDetails(personalDetails);
		
		return "redirect:/dashboard/";
	}
	
		
	@ModelAttribute("educationalBean")
	public EducationalDetails createEducationalBean() {
		EducationalDetails educationalBean = new EducationalDetails();
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		educationalBean = studentService.fetchEducationalDetails(email);
		if(null == educationalBean)
			educationalBean = new EducationalDetails();
		return educationalBean;
	}
	
	@RequestMapping(value = "/educationalDetails", method=RequestMethod.GET)
	public ModelAndView educationalDetails(){
		ModelAndView modelView = new ModelAndView();
		
		List<Subject> subjectList = new ArrayList<Subject>();
		Subject sub1 = new Subject();
		sub1.setSubjectCode("PHY");
		sub1.setSubjectName("Physics");
		
		Subject sub2 = new Subject();
		sub2.setSubjectCode("MTH");
		sub2.setSubjectName("Mathmatics");
		
		Subject sub3 = new Subject();
		sub3.setSubjectCode("CHM");
		sub3.setSubjectName("Chemistry");
		
		Subject sub4 = new Subject();
		sub4.setSubjectCode("BNG");
		sub4.setSubjectName("Bengali");
		
		Subject sub5 = new Subject();
		sub5.setSubjectCode("ENG");
		sub5.setSubjectName("English");
		
		subjectList.add(sub1);
		subjectList.add(sub2);
		subjectList.add(sub3);
		subjectList.add(sub4);
		subjectList.add(sub5);
		
		modelView.addObject("subjects", subjectList);
		
		modelView.setViewName("educationalDetails");
		return modelView;
	}
	
	@RequestMapping(value = "/educationalDetails", method=RequestMethod.POST)
	public String educationalDetailsSubmit(@Valid EducationalDetails educationalDetails, BindingResult result, Model model){
		
		educationalDetails.setEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		System.out.println(educationalDetails.getBoard12());
		boolean status = studentService.saveEducationalDetails(educationalDetails);
		
		return "redirect:/dashboard/";
	}
	
	@RequestMapping(value = "/coursePicker", method=RequestMethod.GET)
	public String coursePicker(){
		return "coursePicker";
	}
	
}
