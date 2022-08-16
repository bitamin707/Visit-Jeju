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

	document.getElementById('cancle').addEventListener("click",function(){
		location.href="/ex/main/accountList";
	})
	document.getElementById('remove').addEventListener("click",function(){
		location.href="/ex/main/accountRemove?username=${boardDtoAccount.username}";
	})
	document.getElementById('save').addEventListener("click",function(){
		document.getElementById('modifyForm').submit();
	})
}
</script>
</head>
<body>
<form id="modifyForm" method="post" action="/ex/main/accountModify">
	아이디 : <input type="text" name=username style="width:100%" value='${boardDtoAccount.username }' readonly="readonly"> <br>
	패스워드 : <input type="text" name=password style="width:100%" value='${boardDtoAccount.password }' ><br>
	Enable : <input type="text" name=enabled style="width:100%" value='${boardDtoAccount.enabled }'><br>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
<button id=save > 저장</button>
<button id=remove > 삭제</button>
<button id=cancle > 취소</button>

</body>
</html>