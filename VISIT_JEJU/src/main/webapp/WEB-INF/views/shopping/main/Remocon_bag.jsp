<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#btn_box {
border:1px solid black; 
width:90%; 
margin:10px 0px; 
text-align:center;
}

button {
margin-left:5%;
}
</style>

<script>
window.onload = function(){
	 document.getElementById("main").onclick = function() {
		 location.href="/ex/shopping/main/Main";
	 }
	 
	 document.getElementById("create").onclick = function() {
		 location.href="/ex/shopping/product/Create";
	 }
}
</script>

</head>
<body>
<table border="1" width="90%" id="customers">
	<tr>
	<th>제품 번호</th>
	<th>제품 이름</th>
	<th>제품 가격</th>
	<th>제품 원가</th>
	<th>카테고리</th>
	</tr>
	<c:forEach items="${list }" var="boardDtoBest">
	<tr>
		<td>${boardDtoBest.pno }</td>
		<td><a href='/ex/main/bestModify?bno=${boardDtoBest.pno}'>${boardDtoBest.product_name }</a></td>
		<td>${boardDtoBest.product_price }</td>
		<td>${boardDtoBest.product_won }</td>
		<td>${boardDtoBest.category }</td>
	</tr>
	</c:forEach>
</table>

<div id="btn_box"> 
<button id="main"> 메인으로</button>
<button id="create"> 제품 추가</button>
<button id="modity"> 수정</button>
</div>


</body>
</html>