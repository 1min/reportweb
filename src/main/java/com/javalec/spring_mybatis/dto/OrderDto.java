package com.javalec.spring_mybatis.dto;

import java.util.Date;

public class OrderDto {

	private String id;
	private int order_id;
	private String con_type;
	private int quantity;
	private String s_date;
	private String l_date;
	private String r_address;
	private String etc;
	private String rman_name;
	private String rman_tel;
	private String rman_company;
	private String rman_mail;
	private String order_stat;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getCon_type() {
		return con_type;
	}
	public void setCon_type(String con_type) {
		this.con_type = con_type;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getS_date() {
		return s_date;
	}
	public void setS_date(String s_date) {
		this.s_date = s_date;
	}
	public String getL_date() {
		return l_date;
	}
	public void setL_date(String l_date) {
		this.l_date = l_date;
	}
	public String getR_address() {
		return r_address;
	}
	public void setR_address(String r_address) {
		this.r_address = r_address;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getRman_name() {
		return rman_name;
	}
	public void setRman_name(String rman_name) {
		this.rman_name = rman_name;
	}
	public String getRman_tel() {
		return rman_tel;
	}
	public void setRman_tel(String rman_tel) {
		this.rman_tel = rman_tel;
	}
	public String getRman_company() {
		return rman_company;
	}
	public void setRman_company(String rman_company) {
		this.rman_company = rman_company;
	}
	public String getRman_mail() {
		return rman_mail;
	}
	public void setRman_mail(String rman_mail) {
		this.rman_mail = rman_mail;
	}
	public String getOrder_stat() {
		return order_stat;
	}
	public void setOrder_stat(String order_stat) {
		this.order_stat = order_stat;
	}
	
	
	
}
