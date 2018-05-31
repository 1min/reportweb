package com.javalec.spring_mybatis.dto;

import java.sql.Date;

public class containerDto {

	private int normal20ft;
	private int normal40ft;
	private int foldable20ft;
	private int foldable40ft;
	private int reefer;
	private int tank;
	
	Date day;

	public int getNormal20ft() {
		return normal20ft;
	}

	public void setNormal20ft(int normal20ft) {
		this.normal20ft = normal20ft;
	}

	public int getNormal40ft() {
		return normal40ft;
	}

	public void setNormal40ft(int normal40ft) {
		this.normal40ft = normal40ft;
	}

	public int getFoldable20ft() {
		return foldable20ft;
	}

	public void setFoldable20ft(int foldable20ft) {
		this.foldable20ft = foldable20ft;
	}

	public int getFoldable40ft() {
		return foldable40ft;
	}

	public void setFoldable40ft(int foldable40ft) {
		this.foldable40ft = foldable40ft;
	}

	public int getReefer() {
		return reefer;
	}

	public void setReefer(int reefer) {
		this.reefer = reefer;
	}

	public int getTank() {
		return tank;
	}

	public void setTank(int tank) {
		this.tank = tank;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}
	
	
}
