package com.onlineapplication.model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PersonalDetails {

	@Id
	private String email;
	
	private String name;
	
	private String fatherName;
	
	private String motherName;
	
	private String gender;
	
	private String dob;
	
	private String age;
	
	private String handicap;
	
	private String studentCast;
	
	private String adl1;
	
	private String adl2;
	
	private String adl3;
	
	private String pin;
	
	private String district;
	
	private String state;

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

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getHandicap() {
		return handicap;
	}

	public void setHandicap(String handicap) {
		this.handicap = handicap;
	}

	public String getAdl1() {
		return adl1;
	}

	public void setAdl1(String adl1) {
		this.adl1 = adl1;
	}

	public String getAdl2() {
		return adl2;
	}

	public void setAdl2(String adl2) {
		this.adl2 = adl2;
	}

	public String getAdl3() {
		return adl3;
	}

	public void setAdl3(String adl3) {
		this.adl3 = adl3;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStudentCast() {
		return studentCast;
	}

	public void setStudentCast(String studentCast) {
		this.studentCast = studentCast;
	}
	
	
	
}
