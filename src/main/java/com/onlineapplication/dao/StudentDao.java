package com.onlineapplication.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.apache.commons.collections.CollectionUtils;
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

	public Student findCustomerByPhone(String phone) {
		TypedQuery<Student> q = entityManager.createQuery("SELECT o FROM Student AS o WHERE o.phone = :phone", Student.class);
		q.setParameter("phone", phone);
		if (CollectionUtils.isEmpty(q.getResultList()))
			return null;
		else return new Student();
			
	}
	
}
