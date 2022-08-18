package com.human.dto.acco;

public class AccoReviewDto {
	private int ano ;
	private String content;
	private int acco_id;
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
	public int getAcco_id() {
		return acco_id;
	}
	public void setAcco_id(int acco_id) {
		this.acco_id = acco_id;
	}
	@Override
	public String toString() {
		return "AccoReviewDto [ano=" + ano + ", content=" + content + ", acco_id=" + acco_id + "]";
	}
	
	
}
