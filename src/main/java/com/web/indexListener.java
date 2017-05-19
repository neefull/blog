package com.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class indexListener implements ServletContextListener {
	
	@Override
	public void contextDestroyed(ServletContextEvent arg) {
		System.out.println(arg.getServletContext().getServletContextName()+"项目销毁....");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg) {
		String sysname = System.getProperty("os.name");
		String app=null;
		if(sysname.endsWith("ws")){
			app="127.0.0.1";
		} else {
			app="1coding.online";
		}
		String name=arg.getServletContext().getServletContextName();
		System.out.println("项目启动....:"+name);
		arg.getServletContext().setAttribute("root", "http://"+app+":8080/blog");
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		arg.getServletContext().setAttribute("ctime", df.format(new Date()));
	}

	/*@Override
	protected WebApplicationContext initWebApplicationContext() {
		getServletContext().setAttribute("root", "http://localhost:8080/blog");
		System.out.println("初始化...");
		return super.initWebApplicationContext();
	}*/
	
	
	
}
