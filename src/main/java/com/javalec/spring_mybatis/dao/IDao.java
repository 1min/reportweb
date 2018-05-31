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
	//--------------------------------������Ʈ----
	public ArrayList<ProfileDto> ProfileOverlapDao(String id);
	public void joinDao(String name,String id,String pw,String tel);//ȸ������
	
	public ArrayList<ProfileDto> loginDao(String id,String pw);//�α���
	
	public int ordercheckDao(String con_type,String start,String end);//�뿩������ ������ �ִ��� üũ
	public void orderDao(String id,String con_type,int quantity,String start,String end,
	String r_address,String etc,String rman_name,String rman_tel,String rman_company,String rman_mail);//�뿩�ϴ°� �μ�Ʈ
	public void conupdateDao(String con_type,String start,String end);//�����̳� ������Ʈ
	
	public ProfileDto profileDao(String id);//ȸ������
	public void modifyProfile(String name,String id,String pw,String tel);
	public ArrayList<OrderDto> myDao(String id);//�� �ֹ�����Ʈ Ȯ��
	
}
