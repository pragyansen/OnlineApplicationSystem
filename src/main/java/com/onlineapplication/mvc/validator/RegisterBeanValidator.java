package com.onlineapplication.mvc.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.onlineapplication.mvc.bean.RegisterBean;

@Component
public class RegisterBeanValidator implements Validator{

	private Pattern pattern;  
	private Matcher matcher;  

	private String MOBILE_PATTERN = "^[789]\\d{9}";  



	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		RegisterBean reigsterBean = (RegisterBean) target;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "required.phone", "Phone is required.");  

		if (!(reigsterBean.getPhone() != null && reigsterBean.getPhone().isEmpty())) {  
			pattern = Pattern.compile(MOBILE_PATTERN);  
			matcher = pattern.matcher(reigsterBean.getPhone());  
			if (!matcher.matches()) {  
				errors.rejectValue("phone", "phone.incorrect",  
						"Enter a correct phone number");  
			}  
		}  
	}

}
