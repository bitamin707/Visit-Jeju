package com.human.dto.main;

public class BoardDtoFoodBest {
	private String imgLink;
	private String name;
	private String content;
	private String tag;
	public String getImgLink() {
		return imgLink;
	}
	public void setImgLink(String imgLink) {
		this.imgLink = imgLink;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	@Override
	public String toString() {
		return "BoardDtoFoodBest [imgLink=" + imgLink + ", name=" + name + ", content=" + content + ", tag=" + tag
				+ "]";
	}
}