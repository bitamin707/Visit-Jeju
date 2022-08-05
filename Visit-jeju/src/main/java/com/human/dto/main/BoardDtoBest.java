package com.human.dto.main;

public class BoardDtoBest {
	private int bno;
	private String imgLink;
	private String name;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
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
	@Override
	public String toString() {
		return "BoardDtoBest [bno=" + bno + ", imgLink=" + imgLink + ", name=" + name + "]";
	}
}
