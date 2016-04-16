package com.onlineapplication.mvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.onlineapplication.constants.AppConstants;
import com.onlineapplication.model.CourseDetails;
import com.onlineapplication.model.EducationalDetails;
import com.onlineapplication.model.FileDetails;
import com.onlineapplication.model.PersonalDetails;
import com.onlineapplication.model.Subject;
import com.onlineapplication.mvc.bean.Course;
import com.onlineapplication.service.RuleService;
import com.onlineapplication.service.StudentService;

@Controller
@RequestMapping(value="/dashboard")
public class DashboardController {
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	RuleService ruleService;

	@RequestMapping(value = "/", method=RequestMethod.GET)
	public ModelAndView home() {
		
		ModelAndView modelView = new ModelAndView(); 
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
				
		PersonalDetails personalBean = studentService.fetchPersonalDetails(email);
		EducationalDetails educationalBean = studentService.fetchEducationalDetails(email);
		byte[] files = studentService.fetchImageByType(email, "photo");
		CourseDetails courses = studentService.fetchCourseDetails(email);
				
		modelView.addObject("educationalBean",educationalBean);
		modelView.addObject("files",files);
		modelView.addObject("courses",courses);
		modelView.addObject("personalBean",personalBean);
		
		modelView.setViewName("dashboard");
		return modelView;
	}
		
	
	@RequestMapping(value = "/personalDetails", method=RequestMethod.GET)
	public ModelAndView personalDetails(){
		ModelAndView modelView = new ModelAndView();
		
		PersonalDetails personalBean = null;
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		
		CourseDetails courseDetails = studentService.fetchCourseDetails(email);
		if(null != courseDetails  && courseDetails.pickedCourses() != ""){
			modelView.setViewName("redirect:/dashboard/");
			return modelView;
		}
		
		personalBean = studentService.fetchPersonalDetails(email);
		if(null == personalBean)
			personalBean = new PersonalDetails();
		personalBean.setName(studentService.fetchStudentByEmail(email).getName());
		
		modelView.addObject("personalBean", personalBean);
		
		modelView.setViewName("personalDetails");
		return modelView;
	}
	
	@RequestMapping(value = "/personalDetails", method=RequestMethod.POST)
	public String personalDetailsSubmit(@Valid PersonalDetails personalDetails, BindingResult result, Model model){
		
		System.out.println(personalDetails.getStudentCast());
		personalDetails.setEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		boolean status = studentService.savePersonalDetails(personalDetails);
		
		return "redirect:/dashboard/";
	}
	
	
	@RequestMapping(value = "/educationalDetails", method=RequestMethod.GET)
	public ModelAndView educationalDetails(){
		ModelAndView modelView = new ModelAndView();
		
		EducationalDetails educationalBean = new EducationalDetails();
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		
		CourseDetails courseDetails = studentService.fetchCourseDetails(email);
		if(null != courseDetails && courseDetails.pickedCourses() != ""){
			modelView.setViewName("redirect:/dashboard/");
			return modelView;
		}
		
		educationalBean = studentService.fetchEducationalDetails(email);
		if(null == educationalBean)
			educationalBean = new EducationalDetails();
		modelView.addObject("educationalBean", educationalBean);
		
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
	public ModelAndView coursePicker(){
		ModelAndView modelView = new ModelAndView();
		CourseDetails courseDetails = new CourseDetails();
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		courseDetails = studentService.fetchCourseDetails(email);
		if(null != courseDetails && courseDetails.pickedCourses() != ""){
			modelView.setViewName("redirect:/dashboard/");
			return modelView;
		}
		if(null == courseDetails)
			courseDetails = new CourseDetails();
		modelView.addObject("courseDetails", courseDetails);

		List<Course> courses = ruleService.invokeRuleSet(SecurityContextHolder.getContext().getAuthentication().getName());
		modelView.addObject("courseList",courses);
		
			
		modelView.setViewName("coursePicker");
		return modelView;
	}
	
	@RequestMapping(value = "/coursePicker", method=RequestMethod.POST)
	public String courseDetailsSubmit(@Valid CourseDetails courseDetails, BindingResult result, Model model){
		
		courseDetails.setEmail(SecurityContextHolder.getContext().getAuthentication().getName());
		boolean status = studentService.saveCourseDetails(courseDetails);
		
		return "redirect:/dashboard/application-form";
	}
	
	@RequestMapping(value = "/application-form", method=RequestMethod.GET)
	public ModelAndView applicationForm() {
		 
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		CourseDetails courseDetails = studentService.fetchCourseDetails(email);
		
		ModelAndView modelAndView = new ModelAndView("application-form");
		if(courseDetails == null)
		{
			modelAndView.setViewName("redirect:/dashboard/");
			return modelAndView;
		}
		if(courseDetails != null)
		{
			
			PersonalDetails personalBean = studentService.fetchPersonalDetails(email);
			EducationalDetails educationalBean = studentService.fetchEducationalDetails(email);
			
			modelAndView.addObject("personalDetails", personalBean);
			modelAndView.addObject("educationalDetails", educationalBean);
			modelAndView.addObject("courseDetails", courseDetails);			
		}
		return modelAndView;
	}
}
