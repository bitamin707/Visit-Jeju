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
* {
font-size:20px;
}

#btn_box {
width:90%; 
margin:10px 0px; 
text-align:center;
}

button {
	margin-left:5%;
	height:30px;
}

tr td {
padding:17px 13px;
}
tr th {
padding:7px;
}

tr:nth-child(even){background-color: #f2f2f2;}

</style>

<script>

var result='${nice}';
if(result=='success'){
	alert('제품이 추가되었습니다.');
}

	window.onload = function() {
		document.getElementById("main").onclick = function() {
			location.href = "/ex/shopping/main/Main";
		}

		document.getElementById("create").onclick = function() {
			location.href = "/ex/shopping/product/Create1";
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
	<th>태그기능</th>
	</tr>
	<c:forEach items="${list }" var="boardDtoBest">
	<tr>
		<td>${boardDtoBest.pno }</td>
		<td><a href='/ex/shopping/product/ShowContent?pno=${boardDtoBest.pno}'>${boardDtoBest.product_name }</a></td>
		<td><fmt:formatNumber value="${boardDtoBest.product_price }" pattern="#,###"/>원</td>
		<td><fmt:formatNumber value="${boardDtoBest.product_won }" pattern=""/>EUR</td>
		<td>${boardDtoBest.product_category }</td>
		<td>${boardDtoBest.product_tag }</td>
		<td><a href='/ex/shopping/product/Delete?pno=${boardDtoBest.pno}'>X</a></td>
	</tr>
	</c:forEach>
</table>

<div id="btn_box"> 
<button id="main"> 메인으로 </button>
<button id="create"> 제품 추가</button>
</div>


</body>
</html>