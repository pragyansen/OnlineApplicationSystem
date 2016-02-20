package com.onlineapplication.mvc.bean;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class RegisterBean {

	@Email
	@NotEmpty
	@Size(min=2, max=30)
	private String email;
	
	@NotEmpty
	@Size(min=2, max=30)
	private String name;
	
	@NotEmpty
	private String phone;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
