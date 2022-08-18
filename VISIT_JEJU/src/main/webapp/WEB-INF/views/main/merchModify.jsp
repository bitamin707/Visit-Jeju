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
<form id="ModifyForm" method="post" action="/ex/main/merchModify">

	<input type="hidden" name=bno style="width:10px" value='${boardDtoMerch.bno }' readonly="readonly"> <br>
	
	<label for="fname">Title</label>
	<input type="text" name=name style="width:100%" value='${boardDtoMerch.name }' ><br>
	
	<label for="fname">ImgLink</label>
	<input type="text" name=imgLink style="width:100%" value='${boardDtoMerch.imgLink }'><br>
	
	<input type="hidden" name=price style="width:100%" value='${boardDtoMerch.price }'><br>
	<textarea name=content  rows="8" style="width:100%"	>${boardDtoMerch.content }</textarea><br>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<button id=modify type="submit"> 저장</button>
	<button id=main type="button"> 취소</button>
	
</form>
</div>

</body>
</html>