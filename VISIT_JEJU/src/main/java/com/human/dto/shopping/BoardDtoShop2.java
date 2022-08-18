package com.human.dto.shopping;

import java.util.Date;

public class BoardDtoShop2 {
	
	private int bno;
	private String what_product;
	private String review;
	private String recommand;
	private String userid;
	private String recommand2;
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getWhat_product() {
		return what_product;
	}
	public void setWhat_product(String what_product) {
		this.what_product = what_product;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getRecommand() {
		return recommand;
	}
	public void setRecommand(String recommand) {
		this.recommand = recommand;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getRecommand2() {
		return recommand2;
	}
	public void setRecommand2(String recommand2) {
		this.recommand2 = recommand2;
	}
	@Override
	public String toString() {
		return "BoardDtoShop2 [bno=" + bno + ", what_product=" + what_product + ", review=" + review + ", recommand="
				+ recommand + ", userid=" + userid + ", recommand2=" + recommand2 + "]";
	}

}
