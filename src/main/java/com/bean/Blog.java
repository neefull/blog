package com.bean;

public class Blog extends BaseBean {

	private static final long serialVersionUID = 1L;

	private String title;
	
	private String text;
	
	private String img;
	
	private Long indexId;
	
	private Integer type;

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Long getIndexId() {
		return indexId;
	}

	public void setIndexId(Long indexId) {
		this.indexId = indexId;
	}

	public Blog() {
	}
	
	public Blog(String title, String text, String img, Long indexId,Integer type) {
		this.title = title;
		this.text = text;
		this.img = img;
		this.indexId = indexId;
		this.type = type;
	}

	public Blog(Long index,String title, String text, String img) {
		this.title = title;
		this.text = text;
		this.img = img;
		this.indexId = index;
	}
	
	public Blog(String title, String text, String img) {
		this.title = title;
		this.text = text;
		this.img = img;
	}

	public Blog(Long index) {
		this.indexId = index;
	}

	public Blog(String title2, String text2, String fileName, Integer type2) {
		this.title = title2;
		this.text = text2;
		this.img = fileName;
		this.type = type2;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	@Override
	public String toString() {
		return "{blog:[indexId:"+indexId+"title:"+this.title+",text:"+this.text+",img:"+this.img+"]}";
	}
	
}
