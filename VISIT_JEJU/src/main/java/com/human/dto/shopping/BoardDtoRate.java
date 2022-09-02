package com.human.dto.shopping;

public class BoardDtoRate {
	
	private int grade;
	private int avg_sold_out;
	
	
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getAvg_sold_out() {
		return avg_sold_out;
	}
	public void setAvg_sold_out(int avg_sold_out) {
		this.avg_sold_out = avg_sold_out;
	}
	
	
	@Override
	public String toString() {
		return "BoardDtoRate [grade=" + grade + ", avg_sold_out=" + avg_sold_out + "]";
	}
		

}
