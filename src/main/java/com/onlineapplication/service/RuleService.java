package com.onlineapplication.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.kie.api.runtime.KieSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

import com.onlineapplication.dao.StudentDao;
import com.onlineapplication.kie.model.Message;
import com.onlineapplication.model.EducationalDetails;
import com.onlineapplication.mvc.bean.Course;

@Service
public class RuleService {

	@Inject 
	ApplicationContext context; 

	KieSession kieSession;

	@PostConstruct 
	public void postConstruct(){ 
		kieSession = (KieSession) context.getBean("ksession1"); 
	}
	
	@Autowired
	private StudentDao studentDao;
	
	private static final Logger logger = Logger.getLogger(RuleService.class);
	
	public List<Course> invokeRuleSet(String email){
		logger.debug("Entering invokeRuleSet");
		
		EducationalDetails eduDetails = studentDao.findEducationalDetail(email);
		
		Map<String, Double> marksMap = new HashMap<String, Double>();
		marksMap.put(eduDetails.getSubject1code(), 
				Double.parseDouble(eduDetails.getSubject1marks())/Double.parseDouble(eduDetails.getSubject1total())*100);
		marksMap.put(eduDetails.getSubject2code(), 
				Double.parseDouble(eduDetails.getSubject2marks())/Double.parseDouble(eduDetails.getSubject2total())*100);
		marksMap.put(eduDetails.getSubject3code(), 
				Double.parseDouble(eduDetails.getSubject3marks())/Double.parseDouble(eduDetails.getSubject3total())*100);
		marksMap.put(eduDetails.getSubject4code(), 
				Double.parseDouble(eduDetails.getSubject4marks())/Double.parseDouble(eduDetails.getSubject4total())*100);
		marksMap.put(eduDetails.getSubject5code(), 
				Double.parseDouble(eduDetails.getSubject5marks())/Double.parseDouble(eduDetails.getSubject5total())*100);
		
		Message message = new Message();
		message.setMarksMap(marksMap);
		//KieSession kSession = (KieSession) context.getBean("ksession1");
		kieSession.insert(message);
		kieSession.fireAllRules();
		
		for(Course c: message.getSubjectList()){
			System.out.println(c.getCourseCode() + " : " + c.getCourseName());
		}
		
		logger.debug("Exiting invokeRuleSet");
		return message.getSubjectList();
	}
	
	
}
