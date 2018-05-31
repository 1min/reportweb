<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/spring_mybatis3/resources/css/form.css">
</head>
<body>
<h1 style='color:red'>${error}</h1>
<div class="login-page">
  <div class="form">
    <form class="login-form" action="joinOK" id="form1">
      <input type="text" placeholder="username" name="name" required/>
      <input type="text" placeholder="userid" name="id" required/>
      <input type="password" placeholder="password" name="pw" required/>
      <input type="text" placeholder="tel-phone" name="tel" required/>
      <button form="form1" type="submit">join</button>
      <p class="message">Do you have already account? <a href="login">log-in an account</a></p>
    </form>
  </div>
</div>



<%--  회원가입 <h1 style='color:red'>${error}</h1>
<form action="joinTM"><br>
name<input type="text" name="name"><br>
id<input type="text" name="id"><br>
password<input type="password" name="pw"><br>
tel-phone<input type="text" name="tel"><br>
<input type="submit" value="submit"><input type="reset" value="reset">
 
</form>
 --%></body>
</html>