package com.onlineapplication.security;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.onlineapplication.model.Student;
import com.onlineapplication.service.StudentService;

@Service
public class CustomUserService implements UserDetailsService {

	@Autowired
	StudentService studentService;
	
	@Override
	public UserDetails loadUserByUsername(final String username) throws UsernameNotFoundException {
		
		Student student = studentService.fetchStudentByEmail(username.toLowerCase());
	      if (student==null) throw
	         new UsernameNotFoundException("Username not found: " + username);
		List<GrantedAuthority> list = new ArrayList<GrantedAuthority>();
		list.add(new SimpleGrantedAuthority(student.getRole()));
		return new User(username, student.getHashedPass(), list);
	}

}
