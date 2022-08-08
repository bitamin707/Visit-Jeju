package com.human.dto.food;

public class FoodDto {
	private int bno;
	private String imglink;
	private String name;
	private String address;
	private String href;
	public String getHref() {
		return href;
	}
	public void setHref(String href) {
		this.href = href;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getImglink() {
		return imglink;
	}
	public void setImglink(String imglink) {
		this.imglink = imglink;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "FoodDto [bno=" + bno + ", imglink=" + imglink + ", name=" + name + ", address=" + address + ", href="
				+ href + "]";
	}
	
	
}
