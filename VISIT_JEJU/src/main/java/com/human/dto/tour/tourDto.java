package com.human.dto.tour;

public class tourDto {

	private int tno;
	private String imglink;
	private String tname;
	private String tadrs;
	private String tinfo;
	
	@Override
	public String toString() {
		return "tourDto [tno=" + tno + ", imglink=" + imglink + ", tname=" + tname + ", tadrs=" + tadrs + ", tinfo="
				+ tinfo + "]";
	}
	
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getImglink() {
		return imglink;
	}
	public void setImglink(String imglink) {
		this.imglink = imglink;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTadrs() {
		return tadrs;
	}
	public void setTadrs(String tadrs) {
		this.tadrs = tadrs;
	}
	public String getTinfo() {
		return tinfo;
	}
	public void setTinfo(String tinfo) {
		this.tinfo = tinfo;
	}
	
}
