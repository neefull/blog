package com.bean;

import java.util.HashMap;
import java.util.Map;

/*
 * 基础Bean
 * */
public class PageBean implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	int start = 0;
	int end = 10;
	int total = end - start;
	Map<String, Object> map = new HashMap<String, Object>();

	public PageBean(int start2, int end2) {
		this.end = end2;
		this.start = start2;
	}

	public PageBean() {
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Map<String, Object> getMap() {
		return map;
	}

	public void setMap(Map<String, Object> map) {
		this.map = map;
	}

}
