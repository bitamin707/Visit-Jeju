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
<style>      
body {font-family: Arial, Helvetica, sans-serif;
      text-align: center;}
      * {box-sizing: border-box;}
      
      input[type=text], textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
        resize: vertical;
      }
      
      button {
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
      
      .container {
        width:400px;
        border-radius: 5px;
        background-color: #e6e6e6;
        padding: 20px;
      }

      form{
        text-align: left;
      }
</style>
</head>
<body>
<div class='container'>
<h2>데이터 수정</h2>
<form id="modifyForm" method="post" action="/ex/main/accountModify">

	<label for="fname">ID</label>
	<input type="text" name=username style="width:100%" value='${boardDtoAccount.username }' readonly="readonly"> <br>
	<label for="fname">Password</label>
	<input type="text" name=password style="width:100%" value='${boardDtoAccount.password }' ><br>
	<label for="fname">Enable</label>
	<input type="text" name=enabled style="width:100%" value='${boardDtoAccount.enabled }'><br>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<button id=save > 저장</button>
	<button id=remove > 삭제</button>
	<button id=cancle > 취소</button>
</form>
</div>

</body>
</html>