package com.dao.mapper;

import java.util.List;

import com.bean.*;

public interface BlogMapper {

	void save(Blog blog);
	boolean update(Blog blog);
	boolean delete(Long index);
	Blog findById(Blog blog);
	List<Blog> findAll();
	List<Blog> findAllByType(Blog blog);
	List<Blog> page(PageBean pb);
}
