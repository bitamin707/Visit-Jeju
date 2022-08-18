<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	document.getElementsByClassName("btn")[0]
	.addEventListener("click",function(){
		location.href='/ex/main/main';
	});
}
</script>
</head>
<body>
<table border="1" width="90%" id="customers">
	<tr>
	<th>아이디</th>
	<th>패스워드</th>
	<th>Enable</th>
	</tr>
	<c:forEach items="${listAccount }" var="boardDtoAccount">
	<tr>
		<td><a href='/ex/main/accountModify?username=${boardDtoAccount.username}'>${boardDtoAccount.username }</a></td>
		<td>${boardDtoAccount.password }</td>
		<td>${boardDtoAccount.enabled }</td>
	</tr>
	</c:forEach>
</table>

<button class="btn"> 메인으로</button>
</body>
</html>