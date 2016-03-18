package com.onlineapplication.kie.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.onlineapplication.mvc.bean.Course;

public class Message {

	private Map<String, Double> marksMap = new HashMap<String, Double>();
	private List<Course> subjectList = new ArrayList<Course>();
	
	public Map<String, Double> getMarksMap() {
		return marksMap;
	}
	public void setMarksMap(Map<String, Double> marksMap) {
		this.marksMap = marksMap;
	}
	public List<Course> getSubjectList() {
		return subjectList;
	}
	public void setSubjectList(List<Course> subjectList) {
		this.subjectList = subjectList;
	}
	
}