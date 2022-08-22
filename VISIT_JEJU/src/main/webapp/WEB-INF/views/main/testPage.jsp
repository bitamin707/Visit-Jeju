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
	document.getElementsByClassName("btn")[0]
	.addEventListener("click",function(){
		location.href='/ex/main/main';
	});
}

window.onload=function(){
	document.getElementsByClassName("perchase")[0]
	.addEventListener("click",function(){
		location.href='/ex/main/testPage2';
	});
}

window.onload=function(){
	document.getElementsByClassName("recommend")[0]
	.addEventListener("click",function(){
		location.href='/ex/main/testPage3';
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
	<th>상품명</th>
	<th>봄</th>
	<th>여름</th>
	<th>가을</th>
	<th>겨울</th>
	<th>남자</th>
	<th>여자</th>
	</tr>
	<c:forEach items="${listTest }" var="boardDtoTest">
	<tr>
		<td>${boardDtoTest.title }</a></td>
		<td>${boardDtoTest.spring }</td>
		<td>${boardDtoTest.summer }</td>
		<td>${boardDtoTest.autumn }</td>
		<td>${boardDtoTest.winter }</td>
		<td>${boardDtoTest.male }</td>
		<td>${boardDtoTest.female }</td>
	</tr>
	</c:forEach>
</table>
<button class="perchase">구입목록추가</button>
<button class="recommend">추천목록보기</button>
<button class="btn"> 메인으로</button>
</body>
</html>