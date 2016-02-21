package com.onlineapplication.service;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.onlineapplication.model.Student;
import com.onlineapplication.mvc.controller.SecurityController;

@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;
	
	private static final Logger logger = Logger.getLogger(SecurityController.class);
	
    public void sendMail(final Student student) {
    	
    	  MimeMessagePreparator preparator = new MimeMessagePreparator() {

              public void prepare(MimeMessage mimeMessage) throws Exception {

                  mimeMessage.setRecipient(Message.RecipientType.TO,
                          new InternetAddress(student.getEmail()));
                  mimeMessage.setFrom(new InternetAddress("pragyan.sen@gmail.com"));
                  mimeMessage.setSubject("Registration Success");
                  mimeMessage.setText("Dear " + student.getName() + ", \n" +
                		  "Your password is "+ student.getPassword()
                		  
                		  );
              }
          };

          try {
              this.mailSender.send(preparator);
              logger.debug("Mail Sent");
          }
          catch (MailException ex) {
              // simply log it and go on...
              System.err.println(ex.getMessage());
          }
    }
	
}
