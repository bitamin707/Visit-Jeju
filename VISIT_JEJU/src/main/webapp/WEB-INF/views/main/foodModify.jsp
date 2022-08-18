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

	document.getElementById('main').addEventListener("click",function(){
		location.href="/ex/main/foodList";
	})
	
	document.getElementById('modify').addEventListener("click",function(){
		document.getElementById('foodModifyForm').submit();
	})
}
</script>
</head>
<body>
<form id="foodModifyForm" method="post" action="/ex/main/foodModify">
	Number:<input type="text" name=bno style="width:10px" value='${boardDtoFood.bno }' readonly="readonly"> <br>
	Title:<input type="text" name=name style="width:100%" value='${boardDtoFood.name }' ><br>
	imgLink:<input type="text" name=imgLink style="width:100%" value='${boardDtoFood.imgLink }'><br>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<button id=modify > 저장</button>
<button id=main > 취소</button>

</body>
</html>