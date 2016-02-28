package com.onlineapplication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlineapplication.dao.StudentDao;
import com.onlineapplication.model.PersonalDetails;
import com.onlineapplication.model.Student;
import com.onlineapplication.mvc.bean.RegisterBean;

@Service
public class StudentService {

	@Autowired
	StudentDao studentDao;
	
	@Autowired
	PasswordGenerator passwordGenerator;
	
	public Student saveNewStudent(RegisterBean registerBean){		
		try{
			Student student = new Student();
			student.setName(registerBean.getName());
			student.setEmail(registerBean.getEmail().toLowerCase());
			student.setPhone(registerBean.getPhone());
			student.setPassword(passwordGenerator.randomString(8));
			student.setRole("ROLE_USER");
			studentDao.persist(student);
			return student;
		}catch(Exception e){
			return null;
		}
	}

	public Student fetchStudentByEmail(String email) {
		return studentDao.findStudent(email);
	}

	public boolean studentAlreadyExists(RegisterBean registerBean) {
		if((null != studentDao.findStudent(registerBean.getEmail())) || (null != studentDao.findStudentByPhone(registerBean.getPhone()))){
			return true;
		}
		return false;
	}
	
	public Student fetchStudentByPhone(String phone){
		return studentDao.findStudentByPhone(phone);
	}

	public boolean savePersonalDetails(PersonalDetails personalDetails) {
		try{
			studentDao.savePersonalDetils(personalDetails);
			return true;
		}catch(Exception e){
			return false;
		}
	}
}
