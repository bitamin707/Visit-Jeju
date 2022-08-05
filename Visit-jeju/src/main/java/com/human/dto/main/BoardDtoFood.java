package com.human.dto.main;

public class BoardDtoFood {
	private int bno;
	private String name;
	private String imgLink ;
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
	@Override
	public String toString() {
		return "BoardDtoFood [bno=" + bno + ", name=" + name + ", imgLink=" + imgLink + "]";
	}
	
	
}
