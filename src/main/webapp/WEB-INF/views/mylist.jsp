<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<title>Insert title here</title>
</head>
<body>


<form action="modifyOK">
�̸�<input type="text" name="name" value="${profile.name}"><br>
���̵�<input type="text" value= ${sessionScope.id} name="id" readonly><br>
��й�ȣ <input type="passowrd" name="pw" value="${profile.pw}" ><br>
��ȭ��ȣ<input type="text" name="tel" value="${profile.tel}"><br>
<input type="submit" value="ȸ������ �ٲٱ�">
</form>
<br><br>
<table width="800" border="1"> <!-- cellpadding="0" cellspacing="0" ���̺� �е� ���ſ뵵-->
	<tr>
		<td>�ֹ���ȣ</td>
		<td>�����̳�Ÿ��</td>
		<td>����</td>
		<td>�뿩��</td>
		<td>�ݳ���</td>
		<td>�ּ�</td>
	<tr>
	<c:forEach items="${orderlist}" var="dto">
	<tr>
		<td>${dto.order_id}</td>
		<td>${dto.con_type}</td>
		<td>${dto.quantity}</td>
		<td>${dto.s_date}</td>
		<td>${dto.l_date}</td>
		<td>${dto.r_address}</td>
		<td>���(�ӽ�)</td>
	<tr>
	</c:forEach>
</table>
</body>
</html>