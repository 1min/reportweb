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
이름<input type="text" name="name" value="${profile.name}"><br>
아이디<input type="text" value= ${sessionScope.id} name="id" readonly><br>
비밀번호 <input type="passowrd" name="pw" value="${profile.pw}" ><br>
전화번호<input type="text" name="tel" value="${profile.tel}"><br>
<input type="submit" value="회원정보 바꾸기">
</form>
<br><br>
<table width="800" border="1"> <!-- cellpadding="0" cellspacing="0" 테이블 패딩 제거용도-->
	<tr>
		<td>주문번호</td>
		<td>컨테이너타입</td>
		<td>수량</td>
		<td>대여일</td>
		<td>반납일</td>
		<td>주소</td>
	<tr>
	<c:forEach items="${orderlist}" var="dto">
	<tr>
		<td>${dto.order_id}</td>
		<td>${dto.con_type}</td>
		<td>${dto.quantity}</td>
		<td>${dto.s_date}</td>
		<td>${dto.l_date}</td>
		<td>${dto.r_address}</td>
		<td>취소(임시)</td>
	<tr>
	</c:forEach>
</table>
</body>
</html>