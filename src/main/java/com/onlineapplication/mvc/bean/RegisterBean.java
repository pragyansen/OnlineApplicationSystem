package com.onlineapplication.mvc.bean;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.onlineapplication.mvc.convert.MaskFormat;

public class RegisterBean {

	@Email
	private String email;
	
	@NotEmpty
	private String name;
	
	@MaskFormat("##########")
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
