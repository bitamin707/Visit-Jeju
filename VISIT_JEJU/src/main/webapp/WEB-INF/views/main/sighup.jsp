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
<form id="sighup" method="POST" action="/ex/main/sighup">
<table border="1" width="90%" id="customers">
	<tr>
		<td width=10%>아이디</td><td><input type="text" name="username" style="width:90%"></td>
	</tr>
	<tr>
		<td width=10%>비밀번호</td><td><input type="text" name="password" style="width:90%"></td>
	</tr>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</table>
</form>
<button id="save">저장</button>
<button type="button" id="cancle">취소</button>
</body>
</html>


