package com.onlineapplication.mvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.onlineapplication.mvc.bean.SingleFile;

@Component
public class FileValidator implements Validator {
     
    public boolean supports(Class<?> clazz) {
        return SingleFile.class.isAssignableFrom(clazz);
    }
 
    public void validate(Object obj, Errors errors) {
        SingleFile file = (SingleFile) obj;
         
        if(file.getFile()!=null){
            if (file.getFile().getSize() == 0) {
                errors.rejectValue("file", "missing.file");
            }
        }
    }
}