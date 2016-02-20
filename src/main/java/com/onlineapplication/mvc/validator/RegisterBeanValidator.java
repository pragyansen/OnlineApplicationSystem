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

	private static String MOBILE_PATTERN = "^[789]\\d{9}";  
	private static String STRING_PATTERN = "[a-zA-Z ]+";  
	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"  
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";  

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		RegisterBean reigisterBean = (RegisterBean) target;



		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email",  
				"required.email", "Valid email is required.");  

		// email validation in spring  
		if (!(reigisterBean.getEmail() != null && reigisterBean.getEmail().isEmpty())) {  
			pattern = Pattern.compile(EMAIL_PATTERN);  
			matcher = pattern.matcher(reigisterBean.getEmail());  
			if (!matcher.matches()) {  
				errors.rejectValue("email", "email.incorrect",  
						"Enter a correct email");  
			}  
		}  

		ValidationUtils.rejectIfEmpty(errors, "name", "required.name",  "Valid name is required.");  

		// input string conatains characters only  
		if (!(reigisterBean.getName() != null && reigisterBean.getName().isEmpty())) {  
			pattern = Pattern.compile(STRING_PATTERN);  
			matcher = pattern.matcher(reigisterBean.getName());  
			if (!matcher.matches()) {  
				errors.rejectValue("name", "name.containNonChar",  
						"Enter a valid name");  
			}  
		}  


		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phone", "required.phone", "A valid 10 digit Phone number is required");  

		if (!(reigisterBean.getPhone() != null && reigisterBean.getPhone().isEmpty())) {  
			pattern = Pattern.compile(MOBILE_PATTERN);  
			matcher = pattern.matcher(reigisterBean.getPhone());  
			if (!matcher.matches()) {  
				errors.rejectValue("phone", "phone.incorrect",  
						"Enter a correct phone number");  
			}  
		}  
	}

}
