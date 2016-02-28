package com.onlineapplication.mvc.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
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
         
        int index=0;
         
        for(SingleFile file : multiBucket.getFiles()){
            if(file.getFile()!=null){
                if (file.getFile().getSize() == 0) {
                    errors.rejectValue("files["+index+"].file", "missing.file");
                }
            }
            index++;
        }
         
    }
}