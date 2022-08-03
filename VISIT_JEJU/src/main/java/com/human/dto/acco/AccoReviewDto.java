package com.human.dto.acco;

public class AccoReviewDto {
	private int ano ;
	private String content;
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "AccoReviewDto [ano=" + ano + ", content=" + content + "]";
	}
	
	
}
