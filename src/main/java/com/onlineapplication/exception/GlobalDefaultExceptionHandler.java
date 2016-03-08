package com.onlineapplication.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	@ExceptionHandler(value = {Exception.class, RuntimeException.class})
	public ModelAndView handleError(HttpServletRequest request, Exception e) {
		ModelAndView mav = new ModelAndView("/errors/500");
		mav.addObject("exception", e);
		return mav;
	}
}
