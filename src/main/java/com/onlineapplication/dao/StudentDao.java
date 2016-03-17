package com.onlineapplication.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.onlineapplication.model.EducationalDetails;
import com.onlineapplication.model.FileDetails;
import com.onlineapplication.model.PersonalDetails;
import com.onlineapplication.model.Student;

@Repository
public class StudentDao {

	@PersistenceContext
	EntityManager entityManager;

	@Transactional
	public void persist(Student student) {
		this.entityManager.persist(student);
	}

	public Student findStudent(String email) {
		if (email == null) return null;
		return entityManager.find(Student.class, email);
	}

	public Student findStudentByPhone(String phone) {
		TypedQuery<Student> q = entityManager.createQuery("SELECT o FROM Student AS o WHERE o.phone = :phone", Student.class);
		q.setParameter("phone", phone);
		List<Student> student = q.getResultList();
		if(CollectionUtils.isEmpty(student)){
			return null;
		}else{
			return q.getResultList().get(0);
		}
	}

	@Transactional
	public void savePersonalDetils(PersonalDetails personalDetails) {
		if(null != findPerosnalDetail(personalDetails.getEmail())){
			this.entityManager.merge(personalDetails);
			this.entityManager.flush();
		} else {
			this.entityManager.persist(personalDetails);
		}
	}
	
	public PersonalDetails findPerosnalDetail(String email) {
		if (email == null) return null;
		return entityManager.find(PersonalDetails.class, email);
	}
	
	@Transactional
	public void saveEducationalDetils(EducationalDetails educationalDetails) {
		if(null != findEducationalDetail(educationalDetails.getEmail())){
			this.entityManager.merge(educationalDetails);
			this.entityManager.flush();
		} else {
			this.entityManager.persist(educationalDetails);
		}
	}
	
	public EducationalDetails findEducationalDetail(String email) {
		if (email == null) return null;
		return entityManager.find(EducationalDetails.class, email);
	}

	@Transactional
	public void saveFileDetails(FileDetails fileDetails) {
		if(null != findImageData(fileDetails.getEmail())){
			this.entityManager.merge(fileDetails);
			this.entityManager.flush();
		} else {
			this.entityManager.persist(fileDetails);
		}

	}

	public FileDetails findImageData(String email) {
		return entityManager.find(FileDetails.class, email);
	}


	@Transactional
	public void merge(Student student) {
		this.entityManager.merge(student);
	}

}
