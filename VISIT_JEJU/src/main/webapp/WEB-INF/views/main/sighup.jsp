<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
window.onload=function(){

	document.getElementById('cancle').addEventListener("click",function(){
		location.href="/ex/main/loginPage";
	})
	
	document.getElementById('save').addEventListener("click",function(){
		document.getElementById('sighup').submit();
	})
}
</script>
</head>
<body>
<form id="sighup" method="post" action="/ex/main/sighup">
<table border="1" width="90%" id="customers">
	<tr>
		<td>아이디</td><td><input type="text" name="id" style="width:90%"></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="text" name="pw" style="width:90%"></td>
	</tr>
	<tr>
		<td>생일</td><td><input type="text" name="birth" style="width:90%"></td>
	</tr>
	<tr>
		<td>휴대폰 번호</td><td><input type="text" name="phoneNum" style="width:90%"></td>
	</tr>
	<tr>
		<td>성별</td><td><input type="text" name="sex" style="width:90%"></td>
	</tr>
	<tr>
		<td>이메일</td><td><input type="text" name="email" style="width:90%"></td>
	</tr>	
</table>
</form>
<button id="save">저장</button>
<button type="button" id="cancle">취소</button>
</body>
</html>


