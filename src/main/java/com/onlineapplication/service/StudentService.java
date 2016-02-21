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
	
	public Student saveNewStudent(RegisterBean registerBean){
		try{
			Student student = new Student();
			student.setName(registerBean.getName());
			student.setEmail(registerBean.getEmail());
			student.setPhone(registerBean.getEmail());
			studentDao.persist(student);
			return student;
		}catch(Exception e){
			return null;
		}
	}
}
