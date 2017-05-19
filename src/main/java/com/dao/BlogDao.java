package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.*;
import com.dao.mapper.*;

@Service("blogDao")
public class BlogDao {
	
	@Autowired
	private BlogMapper blogMapper;
	
	public String test(){
		return "ok!";
	}

	public void save(Blog blog) {
		blogMapper.save(blog);
	}

	public boolean update(Blog blog) {
		return blogMapper.update(blog);
	}

	public boolean delete(Long index) {
		return blogMapper.delete(index);
	}

	public Blog findById(Long index) {
		
		return blogMapper.findById(new Blog(index));
	}

	public List<Blog> findAll() {
		return page();
	}
	
	public List<Blog> page(){
		return page(0,5);
	}
	
	public List<Blog> page(int start,int end){
		return blogMapper.page(new PageBean(start,end));
	}
}
