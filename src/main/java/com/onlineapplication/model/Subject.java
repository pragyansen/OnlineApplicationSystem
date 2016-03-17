package com.onlineapplication.model;

public class Subject{

	private String subjectName;
	private String subjectCode;
	private String subjectMarks;
	private String subjectTotal;
	
	public Subject() {}
	
	public Subject(String subjectName, String subjectCode, String subjectMarks, String subjectTotal)
	{
		this.subjectName = subjectName;
		this.subjectCode = subjectCode;
		this.subjectMarks = subjectMarks;
		this.subjectTotal = subjectTotal;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public String getSubjectMarks() {
		return subjectMarks;
	}

	public void setSubjectMarks(String subjectMarks) {
		subjectMarks = subjectMarks;
	}
	
	public String getSubjectTotal() {
		return subjectTotal;
	}

	public void setSubjectTotal(String subjectMarks) {
		subjectTotal = subjectTotal;
	}
	
	
}