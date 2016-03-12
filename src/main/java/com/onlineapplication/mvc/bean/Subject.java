package com.onlineapplication.mvc.bean;

public class Subject{

	private String subjectName;
	private String subjectCode;
	private String SubjectMarks;
	
	public Subject() {}
	
	public Subject(String subjectName, String subjectCode, String subjectMarks)
	{
		this.subjectName = subjectName;
		this.subjectCode = subjectCode;
		this.SubjectMarks = subjectMarks;
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
		return SubjectMarks;
	}

	public void setSubjectMarks(String subjectMarks) {
		SubjectMarks = subjectMarks;
	}
	
	
}