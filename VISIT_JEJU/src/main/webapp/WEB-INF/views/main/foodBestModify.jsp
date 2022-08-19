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
		location.href='/ex/main/main';
	})
	
	document.getElementById('modify').addEventListener("click",function(){
		document.getElementById('FoodBestModifyForm').submit();
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
<form id="FoodBestModifyForm" method="post" action="/ex/main/foodBestModify">
	<label for="fname">Title</label>
	<input type="text" name=name style="width:100%" value='${listFoodBest[0].name }'> <br>
	
	<label for="fname">ImgLink</label>
	<input type="text" name=imgLink style="width:100%" value='${listFoodBest[0].imgLink }' ><br>
	
	<label for="fname">Content</label>
	<textarea name=content  rows="8" style="width:100%"	>${listFoodBest[0].content }</textarea><br>
	
	<label for="fname">Tag</label>
	<input type="text" name=tag style="width:100%" value='${listFoodBest[0].tag }' ><br>
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	
	<button id=modify > 저장</button>
	<button id=main > 취소</button>
</form>
</div>

</body>
</html>