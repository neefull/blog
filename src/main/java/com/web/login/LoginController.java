package com.web.login;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dao.BlogDao;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	BlogDao blogDao;
	
	@RequestMapping("")
	public String loginIndex(HttpServletRequest request,Model model){
		return "redirect:/blog/page";
	}
	
	@ResponseBody
	@RequestMapping("login")
	public String login(HttpServletRequest request,Model model,String name,String pwd){
		if(null != pwd && "123".endsWith(pwd)){
			request.getSession().setAttribute("user", name);
			return "list";
		}
		return "index";
	}
	
	@RequestMapping("list")
	public String loginList(HttpServletRequest request,Model model){
		return "redirect:/blog/page";
	}
	
}
