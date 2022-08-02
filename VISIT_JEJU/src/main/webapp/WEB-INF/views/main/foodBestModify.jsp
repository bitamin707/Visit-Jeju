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
		location.href='/ex/main/main?id=admin&pw=1234';
	})
	
	document.getElementById('modify').addEventListener("click",function(){
		document.getElementById('FoodBestModifyForm').submit();
	})
}
</script>
</head>
<body>
<form id="FoodBestModifyForm" method="post" action="/ex/main/foodBestModify">
	Title:<input type="text" name=name style="width:100%" value='${listFoodBest[0].name }'> <br>
	ImgLink:<input type="text" name=imgLink style="width:100%" value='${listFoodBest[0].imgLink }' ><br>
	Content:<textarea name=content  rows="8" style="width:100%"	>${listFoodBest[0].content }</textarea><br>
	Tag:<input type="text" name=tag style="width:100%" value='${listFoodBest[0].tag }' ><br>
</form>
<button id=modify > 저장</button>
<button id=main > 취소</button>

</body>
</html>