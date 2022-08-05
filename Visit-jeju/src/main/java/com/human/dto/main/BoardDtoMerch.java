package com.human.dto.main;

public class BoardDtoMerch {
	private int bno;
	private String name;
	private String imgLink;
	private int price;
	private String content;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgLink() {
		return imgLink;
	}
	public void setImgLink(String imgLink) {
		this.imgLink = imgLink;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "BoardDtoMerch [bno=" + bno + ", name=" + name + ", imgLink=" + imgLink + ", price=" + price
				+ ", content=" + content + "]";
	}
	
	
	
	
}
