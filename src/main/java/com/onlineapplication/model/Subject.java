package com.onlineapplication.model;

import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

//@Entity
@Embeddable
public class Subject{

/*	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;*/
	
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
		this.subjectMarks = subjectMarks;
	}
	
	public String getSubjectTotal() {
		return subjectTotal;
	}

	public void setSubjectTotal(String subjectMarks) {
		this.subjectTotal = subjectTotal;
	}

//	public long getId() {
//		return id;
//	}
//
//	public void setId(long id) {
//		this.id = id;
//	}
	
	
}