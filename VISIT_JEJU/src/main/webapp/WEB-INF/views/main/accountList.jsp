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
<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    border-left: 1px solid #444444;
    padding: 10px;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  
	button {
		margin-top:20px;
        background-color: #c59614;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
      
    button:hover {
        background-color: #ffdd43;
    }
</style>
</head>
<body>
<table id="customers">
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