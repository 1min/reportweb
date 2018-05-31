<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/spring_mybatis3/resources/css/form.css">
<!-- <script src="https//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"/>
<script type="text/javascript">
$('.message a').click(function(){
	   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});
</script> -->
</head>


<body>
<h1 style='color:red'>${error}</h1>
<div class="login-page">
  <div class="form">
    <form class="login-form" action="loginOK" id="form2" required>
      <input type="text" placeholder="userid" name="id" required/>
      <input type="password" placeholder="password" name="pw" required/>
      <button form="form2" type="submit">login</button>
      <p class="message">Not registered? <a href="join">Create an account</a></p>
    </form>
  </div>
</div>










<%-- 로그인 <h1 style='color:red'>${error}</h1>
<form action="loginOK">
id <input type="text" name="id"><br>
pw <input type="password" name="pw"><br>
<input type="submit" value="login"><input type="reset" value="reset">
</form>
 --%></body>
</html>