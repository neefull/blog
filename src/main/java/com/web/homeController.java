package com.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {
	
	@RequestMapping("index")
	public String loginIndex(HttpServletRequest request){
		return "index";
	}
	
}
