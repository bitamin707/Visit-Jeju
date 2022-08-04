package com.human.dto.main;

public class BoardDtoAccount {
	private String accountID;
	private String accountpw;
	private String birth;
	private String phoneNum;
	private String sex;
	private String email;
	private String adminCheck;
	
	
	public String getAccountID() {
		return accountID;
	}
	public void setAccountID(String accountID) {
		this.accountID = accountID;
	}
	public String getAccountpw() {
		return accountpw;
	}
	public void setAccountpw(String accountpw) {
		this.accountpw = accountpw;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdminCheck() {
		return adminCheck;
	}
	public void setAdminCheck(String adminCheck) {
		this.adminCheck = adminCheck;
	}
	@Override
	public String toString() {
		return "BoardDtoAccount [accountID=" + accountID + ", accountpw=" + accountpw + ", birth=" + birth
				+ ", phoneNum=" + phoneNum + ", sex=" + sex + ", email=" + email + ", adminCheck=" + adminCheck + "]";
	}
	
	
	
}
