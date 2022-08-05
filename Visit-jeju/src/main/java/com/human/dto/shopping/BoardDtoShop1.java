package com.human.dto.shopping;

import java.util.Date;

public class BoardDtoShop1 {

	private String pno;
	private String product_name;
	private String product_price;
	private String product_won;
	private String product_category;
	private String product_tag;
	
	private String product_info;
	private String product_max_qty;
	private String product_img;
	private String product_icon;
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
	public String getProduct_category() {
		return product_category;
	}
	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
	public String getProduct_tag() {
		return product_tag;
	}
	public void setProduct_tag(String product_tag) {
		this.product_tag = product_tag;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public String getProduct_max_qty() {
		return product_max_qty;
	}
	public void setProduct_max_qty(String product_max_qty) {
		this.product_max_qty = product_max_qty;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public String getProduct_icon() {
		return product_icon;
	}
	public void setProduct_icon(String product_icon) {
		this.product_icon = product_icon;
	}
	@Override
	public String toString() {
		return "BoardDtoShop1 [pno=" + pno + ", product_name=" + product_name + ", product_price=" + product_price
				+ ", product_won=" + product_won + ", product_category=" + product_category + ", product_tag="
				+ product_tag + ", product_info=" + product_info + ", product_max_qty=" + product_max_qty
				+ ", product_img=" + product_img + ", product_icon=" + product_icon + "]";
	}
	


}

