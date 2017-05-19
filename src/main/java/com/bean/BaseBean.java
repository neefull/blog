package com.bean;

import java.util.Calendar;

/**
 * 基础Bean
 * */
public class BaseBean implements java.io.Serializable {
	
	private static final long serialVersionUID = 1L;

	private Long Id;
	
	private Calendar creatTime;
	
	public Calendar getCreatTime() {
		return creatTime;
	}

	public void setCreatTime(Calendar creatTime) {
		this.creatTime = creatTime;
	}

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}
	
}
