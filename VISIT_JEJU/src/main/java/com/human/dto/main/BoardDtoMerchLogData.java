package com.human.dto.main;

public class BoardDtoMerchLogData {
	private String spring;
	private String summer;
	private String autumn;
	private String winter;
	private String gender;
	private String age;
	private String merch;
	public String getSpring() {
		return spring;
	}
	public void setSpring(String spring) {
		this.spring = spring;
	}
	public String getSummer() {
		return summer;
	}
	public void setSummer(String summer) {
		this.summer = summer;
	}
	public String getAutumn() {
		return autumn;
	}
	public void setAutumn(String autumn) {
		this.autumn = autumn;
	}
	public String getWinter() {
		return winter;
	}
	public void setWinter(String winter) {
		this.winter = winter;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getMerch() {
		return merch;
	}
	public void setMerch(String merch) {
		this.merch = merch;
	}
	@Override
	public String toString() {
		return "BoardDtoMerchLogData [spring=" + spring + ", summer=" + summer + ", autumn=" + autumn + ", winter="
				+ winter + ", gender=" + gender + ", age=" + age + ", merch=" + merch + "]";
	}
	
	
}
