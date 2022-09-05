<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
window.onload=function(){
	
	document.getElementById("btn")
	.addEventListener("click",function(){
		location.href='/ex/main/main';
	});
	
	document.getElementById("recommend")
	.addEventListener("click",function(){
		location.href='/ex/main/merchAI';
	});
	
	document.getElementById("add").addEventListener("click",function(){
		location.href="/ex/main/merchAdd";
	});
}
</script>
<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    border-left: 1px solid #444444;
    padding: 10px;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
  
	button {
		margin-top:20px;
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
</style>
</head>
<body>
<table id="customers">
	<tr>
	<th>봄</th>
	<th>여름</th>
	<th>가을</th>
	<th>겨울</th>
	<th>성별</th>
	<th>나이</th>
	<th>상품명</th>
	</tr>
	<c:forEach items="${listMerchLogData }" var="boardDtoMerchLogData">
	<tr>
		<td>${boardDtoMerchLogData.spring }</td>
		<td>${boardDtoMerchLogData.summer }</td>
		<td>${boardDtoMerchLogData.autumn }</td>
		<td>${boardDtoMerchLogData.winter }</td>
		<td>${boardDtoMerchLogData.gender }</td>
		<td>${boardDtoMerchLogData.age }</td>
		<td>${boardDtoMerchLogData.merch }</td>
	</tr>
	</c:forEach>
</table>
<button type="button" id="add" >구입데이터추가</button>
<button type="button" id="recommend" >추천목록보기</button>
<button type="button" id="btn" >메인으로</button>
</body>
</html>