package com.human.dto.main;

public class BoardDtoTest {
	private String title;
	private int spring;
	private int summer;
	private int autumn;
	private int winter;
	private int male;
	private int female;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getSpring() {
		return spring;
	}
	public void setSpring(int spring) {
		this.spring = spring;
	}
	public int getSummer() {
		return summer;
	}
	public void setSummer(int summer) {
		this.summer = summer;
	}
	public int getAutumn() {
		return autumn;
	}
	public void setAutumn(int autumn) {
		this.autumn = autumn;
	}
	public int getWinter() {
		return winter;
	}
	public void setWinter(int winter) {
		this.winter = winter;
	}
	public int getMale() {
		return male;
	}
	public void setMale(int male) {
		this.male = male;
	}
	public int getFemale() {
		return female;
	}
	public void setFemale(int female) {
		this.female = female;
	}
	@Override
	public String toString() {
		return "BoardDtoTest [title=" + title + ", spring=" + spring + ", summer=" + summer + ", autumn=" + autumn
				+ ", winter=" + winter + ", male=" + male + ", female=" + female + "]";
	}
}
