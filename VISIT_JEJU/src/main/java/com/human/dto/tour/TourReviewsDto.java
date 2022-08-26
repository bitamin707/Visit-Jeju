package com.human.dto.tour;

import java.util.Date;

public class TourReviewsDto {
	
	private int t_num;
	private String t_writer;
	private Date t_regdate;
	private String t_content;
	private int rating;
	public int getT_num() {
		return t_num;
	}
	public void setT_num(int t_num) {
		this.t_num = t_num;
	}
	public String getT_writer() {
		return t_writer;
	}
	public void setT_writer(String t_writer) {
		this.t_writer = t_writer;
	}
	public Date getT_regdate() {
		return t_regdate;
	}
	public void setT_regdate(Date t_regdate) {
		this.t_regdate = t_regdate;
	}
	public String getT_content() {
		return t_content;
	}
	public void setT_content(String t_content) {
		this.t_content = t_content;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	@Override
	public String toString() {
		return "TourReviewsDto [t_num=" + t_num + ", t_writer=" + t_writer + ", t_regdate=" + t_regdate + ", t_content="
				+ t_content + ", rating=" + rating + "]";
	}
	
	
}

