<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>숙박 글쓰기</title>


</head>
<body>


	<form method="POST" action="/ex/acco/function/review/modify">
	<input type=hidden value="${accoReviewDto.acco_id }" name=acco_id>
	<input type=hidden value="${accoReviewDto.ano }" name=ano>
		리뷰 내용:<input type=text value="${accoReviewDto.content }" name=content><br> 
		 <input type="submit" value=전송><br>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

</body>
</html>