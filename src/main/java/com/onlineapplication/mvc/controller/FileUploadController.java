package com.onlineapplication.mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.onlineapplication.model.CourseDetails;
import com.onlineapplication.mvc.bean.MultiFile;
import com.onlineapplication.mvc.validator.MultiFileValidator;
import com.onlineapplication.service.StudentService;

@Controller
@RequestMapping(path = "/dashboard/fileupload")
public class FileUploadController {

	@Autowired
	StudentService studentService;
	
	@Autowired
	MultiFileValidator multifileValidator;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView fileUploadForm() {
		
		ModelAndView model = new ModelAndView();
		String email = SecurityContextHolder.getContext().getAuthentication().getName();
		CourseDetails courseDetails = studentService.fetchCourseDetails(email);
		if(null != courseDetails  && courseDetails.pickedCourses() != ""){
			model.setViewName("redirect:/dashboard/");
			return model;
		}
			
		MultiFile multiFile = new MultiFile();
		model.addObject("multifile", multiFile);
		model.setViewName("fileupload");
		return model;
	}

	@RequestMapping(method = RequestMethod.POST)
	public String multiFileUpload(@ModelAttribute("multifile") MultiFile multiFileBucket, BindingResult result, ModelMap model)
			throws IOException {

		multifileValidator.validate(multiFileBucket, result);
		
		if (result.hasErrors()) {
			System.out.println("validation errors in multi upload");
			return "fileupload";
		} else {
			System.out.println("Fetching files");
			List<String> fileNames = new ArrayList<String>();
			// Now do something with file...

			String email = SecurityContextHolder.getContext().getAuthentication().getName();

			studentService.saveNewFileDetails(multiFileBucket, email);

			// FileCopyUtils.copy(bucket.getFile().getBytes(), new
			// File(UPLOAD_LOCATION + bucket.getFile().getOriginalFilename()));

			fileNames.add(multiFileBucket.getPhoto().getFile().getOriginalFilename());
			fileNames.add(multiFileBucket.getSign().getFile().getOriginalFilename());

			model.addAttribute("fileNames", fileNames);
			return "fileupload";
		}
	}
}
