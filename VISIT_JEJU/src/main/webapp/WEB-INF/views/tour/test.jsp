<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
<link rel="stylesheet" href="/ex/resources/css/tour/style2.css?after">
<meta charset="UTF-8">
<title>test</title>

</head>
<script>
window.onload=function(){
	document.getElementsByClassName("create_btn")[0].addEventListener("click",function(){
			location.href="/ex/tour/mainCreate";
	});
}
</script>


<body>
	
	
	<button class="create_btn">추가</button>

	
	
</body>

</html>