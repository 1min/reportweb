package com.javalec.spring_mybatis.dao;

import java.util.ArrayList;
import java.util.Date;

import com.javalec.spring_mybatis.dto.ContentDto;
import com.javalec.spring_mybatis.dto.OrderDto;
import com.javalec.spring_mybatis.dto.ProfileDto;

public interface IDao {
	
	public ArrayList<ContentDto> listDao();
	public void writeDao(String Writer, String mContent);
	public ContentDto viewDao(String strID);
	public void deleteDao(String bId);
	//--------------------------------프로젝트----
	public ArrayList<ProfileDto> ProfileOverlapDao(String id);
	public void joinDao(String name,String id,String pw,String tel);//회원가입
	
	public ArrayList<ProfileDto> loginDao(String id,String pw);//로그인
	
	public int ordercheckDao(String con_type,String start,String end);//대여가능한 수량이 있는지 체크
	public void orderDao(String id,String con_type,int quantity,String start,String end,
	String r_address,String etc,String rman_name,String rman_tel,String rman_company,String rman_mail);//대여하는것 인서트
	public void conupdateDao(String con_type,String start,String end);//컨테이너 업데이트
	
	public ProfileDto profileDao(String id);//회원정보
	public void modifyProfile(String name,String id,String pw,String tel);
	public ArrayList<OrderDto> myDao(String id);//내 주문리스트 확인
	
}
