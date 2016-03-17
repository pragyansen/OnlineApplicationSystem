package com.onlineapplication.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class EducationalDetails {
	
	@Id
	private String email;
	
	private String institution12;
	private String institution10;
	
	private String board12;
	private String board10;
	
	private String yearOfPassing12;
	private String yearOfPassing10;
	
	private String marks12;
	private String marks10;
	
	private String totalMarks12;
	private String totalMarks10;
	
	private String percentage12;
	private String percentage10;
	
	@ElementCollection
	private List<Subject> subjects = new ArrayList<Subject>();;
	
	public EducationalDetails()
	{
		subjects.add(new Subject("Bengali","B","",""));
		subjects.add(new Subject("English","E","",""));
		subjects.add(new Subject("Maths","M","",""));
		subjects.add(new Subject("Physics","P","",""));
		subjects.add(new Subject("Chemistry","C","",""));
	}

	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getInstitution12() {
		return institution12;
	}
	public void setInstitution12(String institution12) {
		this.institution12 = institution12;
	}
	public String getInstitution10() {
		return institution10;
	}
	public void setInstitution10(String institution10) {
		this.institution10 = institution10;
	}
	public String getBoard12() {
		return board12;
	}
	public void setBoard12(String board12) {
		this.board12 = board12;
	}
	public String getBoard10() {
		return board10;
	}
	public void setBoard10(String board10) {
		this.board10 = board10;
	}
	public String getYearOfPassing12() {
		return yearOfPassing12;
	}
	public void setYearOfPassing12(String yearOfPassing12) {
		this.yearOfPassing12 = yearOfPassing12;
	}
	public String getYearOfPassing10() {
		return yearOfPassing10;
	}
	public void setYearOfPassing10(String yearOfPassing10) {
		this.yearOfPassing10 = yearOfPassing10;
	}
	public String getMarks12() {
		return marks12;
	}

	public void setMarks12(String marks12) {
		this.marks12 = marks12;
	}

	public String getMarks10() {
		return marks10;
	}

	public void setMarks10(String marks10) {
		this.marks10 = marks10;
	}

	public String getTotalMarks12() {
		return totalMarks12;
	}
	public void setTotalMarks12(String totalMarks12) {
		this.totalMarks12 = totalMarks12;
	}
	public String getTotalMarks10() {
		return totalMarks10;
	}
	public void setTotalMarks10(String totalMarks10) {
		this.totalMarks10 = totalMarks10;
	}
	public String getPercentage12() {
		return percentage12;
	}
	public void setPercentage12(String percentage12) {
		this.percentage12 = percentage12;
	}
	public String getPercentage10() {
		return percentage10;
	}
	public void setPercentage10(String percentage10) {
		this.percentage10 = percentage10;
	}
	
	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}
}
