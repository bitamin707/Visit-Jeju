package com.human.dto.food;

import java.util.Date;

public class BoardDto {
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int likecount;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getLikecount() {
		return likecount;
	}
	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}
	@Override
	public String toString() {
		return "BoardDto [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regdate=" + regdate + ", likecount=" + likecount + "]";
	}
	
	
	
	
	

}


