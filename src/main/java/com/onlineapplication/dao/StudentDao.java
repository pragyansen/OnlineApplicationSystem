package com.onlineapplication.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.onlineapplication.model.Student;

@Repository
public class StudentDao {

	@PersistenceContext
	EntityManager entityManager;
	
	@Transactional
    public void persist(Student student) {
        this.entityManager.persist(student);
    }
	
	public Student findCustomer(String email) {
        if (email == null) return null;
        return entityManager.find(Student.class, email);
    }
	
}
