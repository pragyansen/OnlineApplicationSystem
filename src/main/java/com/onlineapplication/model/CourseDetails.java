package com.onlineapplication.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CourseDetails {

	@Id
	private String email;
	
	private String[] courseCodes = new String[5];
	
	public CourseDetails() {}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String[] getCourseCodes() {
		return courseCodes;
	}

	public void setCourseCodes(String[] courseCodes) {
		this.courseCodes = courseCodes;
	}
	
	

	
}
