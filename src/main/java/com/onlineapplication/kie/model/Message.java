package com.onlineapplication.kie.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Message {

	private Map<String, Integer> marksMap = new HashMap<String, Integer>();
	private List<String> subjectList = new ArrayList<String>();
	
	public Map<String, Integer> getMarksMap() {
		return marksMap;
	}
	public void setMarksMap(Map<String, Integer> marksMap) {
		this.marksMap = marksMap;
	}
	public List<String> getSubjectList() {
		return subjectList;
	}
	public void setSubjectList(List<String> subjectList) {
		this.subjectList = subjectList;
	}
	
}