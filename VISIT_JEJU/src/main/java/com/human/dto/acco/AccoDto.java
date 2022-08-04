package com.human.dto.acco;

public class AccoDto {
	private int acco_id;
	private String acco_name;
	private String acco_address1;
	private String acco_address2;
	private String acco_tag1;
	private String acco_tag2;
	private String acco_tag3;
	private String acco_tag4;
	private int acco_like;
	private int acco_reviewcounter;
	public int getAcco_id() {
		return acco_id;
	}
	public void setAcco_id(int acco_id) {
		this.acco_id = acco_id;
	}
	public String getAcco_name() {
		return acco_name;
	}
	public void setAcco_name(String acco_name) {
		this.acco_name = acco_name;
	}
	public String getAcco_address1() {
		return acco_address1;
	}
	public void setAcco_address1(String acco_address1) {
		this.acco_address1 = acco_address1;
	}
	public String getAcco_address2() {
		return acco_address2;
	}
	public void setAcco_address2(String acco_address2) {
		this.acco_address2 = acco_address2;
	}
	public String getAcco_tag1() {
		return acco_tag1;
	}
	public void setAcco_tag1(String acco_tag1) {
		this.acco_tag1 = acco_tag1;
	}
	public String getAcco_tag2() {
		return acco_tag2;
	}
	public void setAcco_tag2(String acco_tag2) {
		this.acco_tag2 = acco_tag2;
	}
	public String getAcco_tag3() {
		return acco_tag3;
	}
	public void setAcco_tag3(String acco_tag3) {
		this.acco_tag3 = acco_tag3;
	}
	public String getAcco_tag4() {
		return acco_tag4;
	}
	public void setAcco_tag4(String acco_tag4) {
		this.acco_tag4 = acco_tag4;
	}
	public int getAcco_like() {
		return acco_like;
	}
	public void setAcco_like(int acco_like) {
		this.acco_like = acco_like;
	}
	public int getAcco_reviewcounter() {
		return acco_reviewcounter;
	}
	public void setAcco_reviewcounter(int acco_reviewcounter) {
		this.acco_reviewcounter = acco_reviewcounter;
	}
	@Override
	public String toString() {
		return "AccoDto [acco_id=" + acco_id + ", acco_name=" + acco_name + ", acco_address1=" + acco_address1
				+ ", acco_address2=" + acco_address2 + ", acco_tag1=" + acco_tag1 + ", acco_tag2=" + acco_tag2
				+ ", acco_tag3=" + acco_tag3 + ", acco_tag4=" + acco_tag4 + ", acco_like=" + acco_like
				+ ", acco_reviewcounter=" + acco_reviewcounter + "]";
	}
	
	
}
