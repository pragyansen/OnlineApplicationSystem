package com.onlineapplication.service;

import java.io.File;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.onlineapplication.dao.StudentDao;
import com.onlineapplication.model.EducationalDetails;
import com.onlineapplication.model.FileDetails;
import com.onlineapplication.model.PersonalDetails;
import com.onlineapplication.model.Student;
import com.onlineapplication.mvc.bean.MultiFile;
import com.onlineapplication.mvc.bean.RegisterBean;
import com.onlineapplication.mvc.bean.SingleFile;

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
			student.setHashedPass(passwordGenerator.generateEncryptedPass(student.getPassword()));
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

	public PersonalDetails fetchPersonalDetails(String email) {
		return studentDao.findPerosnalDetail(email);
	}
	
	public boolean saveEducationalDetails(EducationalDetails educationalDetails) {
		try{
			studentDao.saveEducationalDetils(educationalDetails);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	public EducationalDetails fetchEducationalDetails(String email) {
		return studentDao.findEducationalDetail(email);
	}

	public boolean saveNewFileDetails(MultiFile multiFileBucket, String email) {
		if(StringUtils.isNotBlank(email)){
			FileDetails fileDetails = new FileDetails();
			fileDetails.setEmail(email);
			try{
				fileDetails.setPhoto(multiFileBucket.getPhoto().getFile().getBytes());
				fileDetails.setPhotoName(multiFileBucket.getPhoto().getFile().getOriginalFilename());
				
				fileDetails.setSignature(multiFileBucket.getSign().getFile().getBytes());
				fileDetails.setSignatureName(multiFileBucket.getSign().getFile().getOriginalFilename());
				
				studentDao.saveFileDetails(fileDetails);
				return true;
			} catch (Exception e){
				return false;
			}
		}
		return false;
	}

	public byte[] fetchImageByType(String email, String type) {
		FileDetails files = studentDao.findImageData(email);
		if(null != files){
			if("sign".equalsIgnoreCase(type))
				return files.getSignature();
			else if("photo".equalsIgnoreCase(type))
				return files.getPhoto();
		}
		return null;
	}

	public Student resetPassword(Student student) {
		student.setPassword(passwordGenerator.randomString(8));
		student.setHashedPass(passwordGenerator.generateEncryptedPass(student.getPassword()));
		studentDao.merge(student);
		return student;
	}
}
