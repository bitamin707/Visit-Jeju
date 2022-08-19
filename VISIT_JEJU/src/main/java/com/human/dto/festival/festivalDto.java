package com.human.dto.festival;

import java.sql.Date;

public class festivalDto {
	public Integer fno;
	public String fname;
	private String fcontent;
	private Date fstart_date;
	private Date fend_date;
	private String flocation;
	private String fregion;
	private String imglink;
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFcontent() {
		return fcontent;
	}
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}
	public Date getFstart_date() {
		return fstart_date;
	}
	public void setFstart_date(Date fstart_date) {
		this.fstart_date = fstart_date;
	}
	public Date getFend_date() {
		return fend_date;
	}
	public void setFend_date(Date fend_date) {
		this.fend_date = fend_date;
	}
	public String getFlocation() {
		return flocation;
	}
	public void setFlocation(String flocation) {
		this.flocation = flocation;
	}
	public String getFregion() {
		return fregion;
	}
	public void setFregion(String fregion) {
		this.fregion = fregion;
	}
	public String getImglink() {
		return imglink;
	}
	public void setImglink(String imglink) {
		this.imglink = imglink;
	}
	@Override
	public String toString() {
		return "festivalDto [fno=" + fno + ", fname=" + fname + ", fcontent=" + fcontent + ", fstart_date="
				+ fstart_date + ", fend_date=" + fend_date + ", flocation=" + flocation + ", fregion=" + fregion
				+ ", imglink=" + imglink + "]";
	}
}
