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
		location.href="/ex/main/bestList";
	})
	
	document.getElementById('modify').addEventListener("click",function(){
		document.getElementById('modifyForm').submit();
	})
}
</script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
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
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<div class='container'>
	<form id="modifyForm" method="post" action="/ex/main/bestModify">
   		<input type="hidden" name=bno style="width:10px" value='${boardDtoBest.bno }' readonly="readonly">

    	<label for="fname">Title</label>
    	<input type="text" name="name" value='${boardDtoBest.name }'>

    	<label for="lname">ImgLink</label>
    	<input type="text" name=imgLink style="width:100%" value='${boardDtoBest.imgLink }'>
    	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    	<button id=modify > 저장</button>
		<button id=main > 취소</button>
	</form>
</div>


</body>
</html>