package com.onlineapplication.mvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.onlineapplication.mvc.bean.MultiFile;
import com.onlineapplication.mvc.bean.SingleFile;

@Component
public class MultiFileValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return MultiFile.class.isAssignableFrom(clazz);
	}

	public void validate(Object obj, Errors errors) {
		MultiFile multiBucket = (MultiFile) obj;


		if(multiBucket.getPhoto().getFile()!=null){
			if (multiBucket.getPhoto().getFile().getSize() == 0) {
				 errors.rejectValue("file", "photo is missing");  
			}
		}
		if(multiBucket.getSign().getFile()!=null){
			if (multiBucket.getSign().getFile().getSize() == 0) {
				 errors.rejectValue("file", "sign is missing");  
			}
		}

	}
}