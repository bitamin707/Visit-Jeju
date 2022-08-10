package com.human.dto.shopping;

import java.util.Date;

public class BoardDtoShop2 {
	private int bno;
	private String what_product;
	private String review;
	private String recommand;
	private String userID;
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
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	@Override
	public String toString() {
		return "BoardDtoShop2 [bno=" + bno + ", what_product=" + what_product + ", review=" + review + ", recommand="
				+ recommand + ", userID=" + userID + "]";
	}

	
}
