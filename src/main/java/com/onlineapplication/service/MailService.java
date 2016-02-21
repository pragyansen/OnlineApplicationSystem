package com.onlineapplication.service;

import java.util.HashMap;
import java.util.Map;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import com.onlineapplication.model.Student;
import com.onlineapplication.mvc.controller.SecurityController;

@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private VelocityEngine velocityEngine;
	
	private static final Logger logger = Logger.getLogger(SecurityController.class);
	
    public void sendMail(final Student student) {
    	
    	  MimeMessagePreparator preparator = new MimeMessagePreparator() {

              @SuppressWarnings("deprecation")
			public void prepare(MimeMessage mimeMessage) throws Exception {
            	  MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
            	  message.setTo(student.getEmail());
            	  message.setFrom(new InternetAddress("pragyan.sen@gmail.com"));
            	  message.setSubject("Registration Success");

                  
                  Map<String,Object> model = new HashMap<String, Object>();
                  model.put("student", student);
                  String text = VelocityEngineUtils.mergeTemplateIntoString(
                          velocityEngine, "com/onlineapplication/service/registration-confirmation.vm", model);
                  message.setText(text, true);
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
