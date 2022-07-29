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
		location.href="/ex/main/merchList";
	})
	
	document.getElementById('modify').addEventListener("click",function(){
		document.getElementById('ModifyForm').submit();
	})
}
</script>
</head>
<body>
<form id="ModifyForm" method="post" action="/ex/main/merchModify">
	Number:<input type="text" name=bno style="width:10px" value='${boardDtoMerch.bno }' readonly="readonly"> <br>
	Title:<input type="text" name=name style="width:100%" value='${boardDtoMerch.name }' ><br>
	imgLink:<input type="text" name=imgLink style="width:100%" value='${boardDtoMerch.imgLink }'><br>
	price:<input type="text" name=price style="width:100%" value='${boardDtoMerch.price }'><br>
	Content:<textarea name=content  rows="8" style="width:100%"	>${boardDtoMerch.content }</textarea><br>
</form>
<button id=modify > 저장</button>
<button id=main > 취소</button>

</body>
</html>