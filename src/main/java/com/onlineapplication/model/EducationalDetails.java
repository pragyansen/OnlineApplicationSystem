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
	
	public EducationalDetails() {}

	
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
	
	private String subject1code;
	private String subject1marks;
	private String subject1total;
	
	private String subject2code;
	private String subject2marks;
	private String subject2total;
	
	private String subject3code;
	private String subject3marks;
	private String subject3total;
	
	private String subject4code;
	private String subject4marks;
	private String subject4total;
	
	private String subject5code;
	private String subject5marks;
	private String subject5total;
	
	
	public String getSubject1code() {
		return subject1code;
	}
	
	public void setSubject1code(String subject1code) {
		this.subject1code = subject1code;
	}
	
	public String getSubject1marks() {
		return subject1marks;
	}
	
	public void setSubject1marks(String subject1marks) {
		this.subject1marks = subject1marks;
	}
	
	public String getSubject1total() {
		return subject1total;
	}
	
	public void setSubject1total(String subject1total) {
		this.subject1total = subject1total;
	}
	
	public String getSubject2code() {
		return subject2code;
	}
	
	public void setSubject2code(String subject2code) {
		this.subject2code = subject2code;
	}
	
	public String getSubject2marks() {
		return subject2marks;
	}
	
	public void setSubject2marks(String subject2marks) {
		this.subject2marks = subject2marks;
	}
	
	public String getSubject2total() {
		return subject2total;
	}
	
	public void setSubject2total(String subject2total) {
		this.subject2total = subject2total;
	}
	
	public String getSubject3code() {
		return subject3code;
	}
	
	public void setSubject3code(String subject3code) {
		this.subject3code = subject3code;
	}
	
	public String getSubject3marks() {
		return subject3marks;
	}
	
	public void setSubject3marks(String subject3marks) {
		this.subject3marks = subject3marks;
	}
	
	public String getSubject3total() {
		return subject3total;
	}
	
	public void setSubject3total(String subject3total) {
		this.subject3total = subject3total;
	}
	
	public String getSubject4code() {
		return subject4code;
	}
	
	public void setSubject4code(String subject4code) {
		this.subject4code = subject4code;
	}
	
	public String getSubject4marks() {
		return subject4marks;
	}
	
	public void setSubject4marks(String subject4marks) {
		this.subject4marks = subject4marks;
	}
	
	public String getSubject4total() {
		return subject4total;
	}
	
	public void setSubject4total(String subject4total) {
		this.subject4total = subject4total;
	}
	
	public String getSubject5code() {
		return subject5code;
	}
	
	public void setSubject5code(String subject5code) {
		this.subject5code = subject5code;
	}
	
	public String getSubject5marks() {
		return subject5marks;
	}
	
	public void setSubject5marks(String subject5marks) {
		this.subject5marks = subject5marks;
	}
	
	public String getSubject5total() {
		return subject5total;
	}
	
	public void setSubject5total(String subject5total) {
		this.subject5total = subject5total;
	}
}
