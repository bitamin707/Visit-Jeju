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
<style>

</style>
</head>
<body>
<table border="1" width="90%" id="customers">
	<tr>
	<th>Number</th>
	<th>Title</th>
	<th>ImgLink</th>
	</tr>
	<c:forEach items="${listFood }" var="boardDtoFood">
	<tr>
		<td>${boardDtoFood.bno }</td>
		<td><a href='/ex/main/foodModify?bno=${boardDtoFood.bno}'>${boardDtoFood.name }</a></td>
		<td>${boardDtoFood.imgLink }</td>
	</tr>
	</c:forEach>
</table>

<button class="btn"> 메인으로</button>
</body>
</html>