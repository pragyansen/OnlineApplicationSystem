package com.onlineapplication.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
		if (CollectionUtils.isEmpty(q.getResultList()))
			return null;
		else return new Student();
			
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
	public void saveFileDetails(FileDetails fileDetails) {
		if(null != findPerosnalDetail(fileDetails.getEmail())){
			this.entityManager.merge(fileDetails);
			this.entityManager.flush();
		} else {
			this.entityManager.persist(fileDetails);
		}
		
	}

	public FileDetails findImageData(String email) {
		return entityManager.find(FileDetails.class, email);
	}
	
}
