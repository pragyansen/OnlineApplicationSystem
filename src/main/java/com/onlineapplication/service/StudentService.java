package com.onlineapplication.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlineapplication.dao.StudentDao;
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
		return studentDao.findCustomer(email);
	}

	public boolean studentAlreadyExists(RegisterBean registerBean) {
		if((null != studentDao.findCustomer(registerBean.getEmail())) || (null != studentDao.findCustomerByPhone(registerBean.getPhone()))){
			return true;
		}
		
		return false;
	}
}
