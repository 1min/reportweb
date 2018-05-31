<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/spring_mybatis3/resources/css/form.css">
<body>

<h1>${error}</h1>
<h1>${number}</h1>


<!-- <div class="login-page">
  <div class="form">
    <form class="login-form" action="loginOK" id="form2" required>
      <input type="text" placeholder="userid" name="id" required/>
      <input type="password" placeholder="password" name="pw" required/>
      <button form="form2" type="submit">login</button>
      <p class="message">Not registered? <a href="join">Create an account</a></p>
    </form>
  </div>
</div> -->

<div class="login-page">
  <div class="form">
<form action="leaseOK" class="login-form" id="form3">
아이디<input type="text" name="id" id="test2" value="${sessionScope.id}" required/><br>
종류<select name ="con_type" required><br>
<option>normal20ft</option>
<option>normal40ft</option>
<option>foldable20ft</option>
<option>foldable40ft</option>
<option>reefer</option>
<option>tank</option>
</select>
<br>
수량<input type="number" name="quantity" id="test" required><br>
대여일<input type=date name="s_date" id="start" required><br>
반납일<input type=date name="l_date" id="end" required><br>
받을주소<input type="text" name="r_address" required><br>
담당자 이름<input type="text" name="rman_name" required><br>
담당자 전화번호<input type="text" name="rman_tel" required><br>
담당자 회사<input type="text" name="rman_company" required><br>
담당자 이메일<input type="text" name="rman_mail" required><br>
기타사항<textarea rows='5' cols='30' name="etc" required></textarea><br>
<button form="form3" type="submit" onclick="a();">submit</button>
</form>
</div>
</div>
</body>
<script>

/* a=()=>{
	let now = new Date();

	let start_date = new Date();
	let end_date = new Date();

	start_date = document.querySelector('#start').innerHTML;
	end_date = document.querySelector('#end').innerHTML;

	
	if(start_date<now){
	alert("지난날을 예약할 수 없습니다.");
	document.querySelector('#end').innerHTML=now;
}
} */

</script>
</html>