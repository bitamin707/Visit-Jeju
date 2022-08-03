package com.human.dto.shopping;

import java.util.Date;

public class BoardDtoShop1 {

	private String pno;
	private String product_name;
	private String product_price;
	private String product_won;
	public String getPno() {
		return pno;
	}
	public void setPno(String pno) {
		this.pno = pno;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_price() {
		return product_price;
	}
	public void setProduct_price(String product_price) {
		this.product_price = product_price;
	}
	public String getProduct_won() {
		return product_won;
	}
	public void setProduct_won(String product_won) {
		this.product_won = product_won;
	}
	@Override
	public String toString() {
		return "BoardDto [pno=" + pno + ", product_name=" + product_name + ", product_price=" + product_price
				+ ", product_won=" + product_won + "]";
	}
	
	
}
