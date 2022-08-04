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
	
	document.getElementById('save').addEventListener("click",function(){
		document.getElementById('modifyForm').submit();
	})
}
</script>
</head>
<body>
<form id="modifyForm" method="post" action="/ex/main/bestModify">
	아이디 : <input type="text" name=accountID style="width:100%" value='${boardDtoAccount.accountID }' readonly="readonly"> <br>
	패스워드 : <input type="text" name=accountpw style="width:100%" value='${boardDtoAccount.accountpw }' ><br>
	생일 : <input type="text" name=birth style="width:100%" value='${boardDtoAccount.birth }'><br>
	연락처 : <input type="text" name=phoneNum style="width:100%" value='${boardDtoAccount.phoneNum }'><br>
	성별 : <input type="text" name=sex style="width:100%" value='${boardDtoAccount.sex }'><br>
	이메일 : <input type="text" name=email style="width:100%" value='${boardDtoAccount.email }'><br>
	관리자 권한 : <input type="text" name=adminCheck style="width:100%" value='${boardDtoAccount.adminCheck }'><br>
</form>
<button id=save > 저장</button>
<button id=cancle > 취소</button>

</body>
</html>