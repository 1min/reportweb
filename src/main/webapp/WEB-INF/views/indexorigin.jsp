<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
${sessionScope.id}

<h1>${number}</h1>
<h1>${quan}</h1>

<c:if test="${not empty sessionScope.id}"> <button onclick="location.href='logout'">logout</button> </c:if>
<c:if test="${empty sessionScope.id}"> <button onclick="location.href='login'">login</button> </c:if>


<button onclick="location.href='join'">join</button>
<!--<button onclick="location.href='login'">login</button> -->
<!--  <button onclick="">테스트</button>-->
</body>
</html>