package com.human.dto.festival;

import java.sql.Date;

public class festival_reviewDto {
	private int fno;
	private String username;
	private int rno;
	private double rating;
	private String rcontent;
	private Date rdate;
	
	public int getFno() {
		return fno;
	}
	public void setFno(int fno) {
		this.fno = fno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	@Override
	public String toString() {
		return "festival_reviewDto [fno=" + fno + ", username=" + username + ", rno=" + rno + ", rating=" + rating
				+ ", rcontent=" + rcontent + ", rdate=" + rdate + "]";
	}
}
