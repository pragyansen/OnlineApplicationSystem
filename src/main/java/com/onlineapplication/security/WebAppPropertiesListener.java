package com.onlineapplication.security;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class WebAppPropertiesListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {

		System.out.println("Web root initialized");
		
        String rootPath = sce.getServletContext().getRealPath("/");
        System.setProperty("webroot", rootPath);
	}

}
