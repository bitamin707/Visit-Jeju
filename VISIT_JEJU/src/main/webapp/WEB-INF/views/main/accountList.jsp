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
		location.href='/ex/main/main?id=admin&pw=1234';
	});
}
</script>
</head>
<body>
<table border="1" width="90%" id="customers">
	<tr>
	<th>아이디</th>
	<th>패스워드</th>
	<th>생일</th>
	<th>연락처</th>
	<th>성별</th>
	<th>이메일</th>
	<th>관리자 권한</th>
	</tr>
	<c:forEach items="${listAccount }" var="boardDtoAccount">
	<tr>
		<td><a href='/ex/main/accountModify?accountID=${boardDtoAccount.accountID}'>${boardDtoAccount.accountID }</a></td>
		<td>${boardDtoAccount.accountpw }</td>
		<td>${boardDtoAccount.birth }</td>
		<td>${boardDtoAccount.phoneNum }</td>
		<td>${boardDtoAccount.sex }</td>
		<td>${boardDtoAccount.email }</td>
		<td>${boardDtoAccount.adminCheck }</td>
	</tr>
	</c:forEach>
</table>

<button class="btn"> 메인으로</button>
</body>
</html>