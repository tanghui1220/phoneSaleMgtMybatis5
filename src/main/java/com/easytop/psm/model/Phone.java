package com.easytop.psm.model;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class Phone {
	
	//@NotEmpty(message="")
	//@Pattern(regexp="[a-zA-Z0-9]{5,20}",message="")

	private int p_id;
	@NotEmpty(message="手机型号不能为空")
	private String p_model;
	private String p_brand;
	@NotEmpty(message="销售价格不能为空")
	private int p_price;
	private String p_color;
	private String p_size;
	@NotEmpty(message="生成日期不能为空")
	private Date p_date;
	@NotEmpty(message="手机描述不能为空")
	private String p_describe;
	public Phone() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Phone(String p_model, String p_brand, int p_price, String p_color, String p_size, Date p_date,
			String p_describe) {
		super();
		this.p_model = p_model;
		this.p_brand = p_brand;
		this.p_price = p_price;
		this.p_color = p_color;
		this.p_size = p_size;
		this.p_date = p_date;
		this.p_describe = p_describe;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_model() {
		return p_model;
	}
	public void setP_model(String p_model) {
		this.p_model = p_model;
	}
	public String getP_brand() {
		return p_brand;
	}
	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_color() {
		return p_color;
	}
	public void setP_color(String p_color) {
		this.p_color = p_color;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public String getP_describe() {
		return p_describe;
	}
	public void setP_describe(String p_describe) {
		this.p_describe = p_describe;
	}
	@Override
	public String toString() {
		return "Phone [p_id=" + p_id + ", p_model=" + p_model + ", p_brand=" + p_brand + ", p_price=" + p_price
				+ ", p_color=" + p_color + ", p_size=" + p_size + ", p_date=" + p_date + ", p_describe=" + p_describe
				+ "]";
	}
	
}
