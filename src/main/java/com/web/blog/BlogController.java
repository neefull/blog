package com.web.blog;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.bean.*;
import com.dao.BlogDao;

@Controller
@RequestMapping("blog")
public class BlogController {
	
	@Autowired
	BlogDao blogDao;
	
	@RequestMapping("old")
	public String getAllUser(HttpServletRequest request){
		return "blog/index";
	}
	
	@RequestMapping("")
	public String indexe2(HttpServletRequest request,Model model){
		return "blog/home";
	}
	
	@RequestMapping("travel")
	public String travel(HttpServletRequest request,Model model){
		List<Blog> bl2 = blogDao.page();
		List<Blog> bl = new ArrayList<Blog>(3);
		request.setAttribute("bl", bl);
		for(int i=0;i<bl2.size(); i++){
			Blog b = bl2.get(i);
			b.setId((i%2 == 0) ? 0l : null);
			b.setImg(b.getImg()+".jpg");
			bl.add(b);
			if(i>=7){
				break;
			}
		}
		model.addAttribute("bl", bl);
		
		return "blog/travel";
	}
	
	@RequestMapping("detile")
	public String detile(HttpServletRequest request,Model model){
		String t=request.getParameter("aid");
		Blog bl = blogDao.findById(t!=null?Long.valueOf(t):0);
		bl.setImg("1494550180794.jpg");
		model.addAttribute("bl",bl);
		return "blog/detile";
	}
	
	@RequestMapping("delete")
	public String delete(HttpServletRequest request,Model model){
		String t=request.getParameter("aid");
		if(null !=t ){
			blogDao.delete(Long.valueOf(t));
		}
		return "redirect:/blog/page";
	}
	
	@RequestMapping("page")
	public String loginList(HttpServletRequest request,Model model,Integer page){
		String user = (String) request.getSession().getAttribute("user");
		Integer start = (Integer) request.getSession().getAttribute("cp");
		List<Blog> bl=null;
		String path=null;
		if(null != user){
			/**
			 * 目前页数为5
			 * */
			if(null != page && start != null && (page - start == 1)){
				bl = blogDao.page(page,page+5);
			} else {
				page=0;
				bl = blogDao.page();
			}
			path = "login/list";
			request.getSession().setAttribute("cp", page);
			model.addAttribute("cp1",page+1);
			model.addAttribute("cp2",page+2);
			model.addAttribute("cp3",page+3);
			model.addAttribute("cp4",page+4);
			model.addAttribute("cp5",page+5);
			model.addAttribute("cp6",page+6);
			model.addAttribute("bl", bl);
		}
		
		return path != null ? path : "login/index";
	}
	
	@RequestMapping("add")
	public String add(){
		return "blog/add";
	}
	
	@RequestMapping("manager")
	public String manager(){
		return "blog/manager";
	}
	
	@ResponseBody
	@RequestMapping("upFile")
	public String managerFile(@RequestParam(value = "inputfile", required = false) MultipartFile file,
			                  @RequestParam(value = "title", required = false) String title,
			                  @RequestParam(value = "text", required = false) String text,
			                  @RequestParam(value = "img", required = false) String img,
			                  @RequestParam(value = "type", required = false) Integer type,
			                  HttpServletRequest request){
		String fileName=null;
		try {
			String path = request.getSession().getServletContext().getRealPath("/");// 文件保存目录，也可自定为绝对路径
			path = path +"\\upfile";
			fileName = String.valueOf(System.currentTimeMillis());
			img = fileName+".jpg";
			System.out.println(path);
			File targetFile = new File(path, img);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
			}
			//保存文件
			file.transferTo(targetFile);
			//保存到数据库
			if(StringUtils.isEmpty(type)){
				type=3;
			}
			blogDao.save(new Blog(title,text,fileName,type));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return img;
	}
	
	@RequestMapping("code")
	public String code(HttpServletRequest request,Model model){
		return "blog/travel";
	}
	
	@RequestMapping("share")
	public String share(HttpServletRequest request,Model model){
		return "blog/travel";
	}
	
	@RequestMapping("read")
	public String read(HttpServletRequest request,Model model){
		return "blog/travel";
	}
	
}
