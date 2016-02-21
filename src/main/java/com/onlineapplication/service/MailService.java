package com.onlineapplication.service;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import com.onlineapplication.model.Student;

@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;
	
	
	
    public void sendMail(final Student student) {
    	
    	  MimeMessagePreparator preparator = new MimeMessagePreparator() {

              public void prepare(MimeMessage mimeMessage) throws Exception {

                  mimeMessage.setRecipient(Message.RecipientType.TO,
                          new InternetAddress(student.getEmail()));
                  mimeMessage.setFrom(new InternetAddress("noreply@admission.system"));
                  mimeMessage.setSubject("Registration Success");
                  mimeMessage.setText("Dear " + student.getName() + ", \n" +
                		  "Your password is 123456"
                		  
                		  );
              }
          };

          try {
              this.mailSender.send(preparator);
          }
          catch (MailException ex) {
              // simply log it and go on...
              System.err.println(ex.getMessage());
          }
    }
	
}
