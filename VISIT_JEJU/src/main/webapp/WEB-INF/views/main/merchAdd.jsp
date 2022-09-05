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
		location.href="/ex/main/main";
	})
	
	document.getElementById('add').addEventListener("click",function(){
		document.getElementById('addForm').submit();
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
        margin:0 auto;
        border-radius: 5px;
        background: #f6f6f6;
        padding: 20px;
      }
      
       .container2 {
        width:400px;
        margin:0 auto;
        border-radius: 5px;
        background: #f6f6f6;
        padding: 20px;
        margin-top:150px;
      }

      form{
        text-align: left;
      }
</style>
</head>
<body>
<div class='container2'>
	<a href="/ex/main/main"><img style="width:100%" id="img1" src="/ex/resources/img/jeju.png"></a>
</div>
<div class='container'>
<h2>데이터 추가</h2>
	<form id="addForm" method="post" action="/ex/main/merchAdd">
    	<label for="fname">spring</label>
    	<input type="text" name="spring" value=''>
    	<label for="fname">summer</label>
    	<input type="text" name="summer" value=''>
    	<label for="fname">autumn</label>
    	<input type="text" name="autumn" value=''>
    	<label for="fname">winter</label>
    	<input type="text" name="winter" value=''>
    	<label for="fname">gender</label>
    	<input type="text" name="gender" value=''>
    	<label for="fname">age</label>
    	<input type="text" name="age" value=''>
		<label for="fname">merch</label>
    	<input type="text" name="merch" value=''>
    	
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    	<button id=add > 저장</button>
		<button id=main > 취소</button>
	</form>
</div>


</body>
</html>