<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<form action="/ex/tour/board/register" method="post">
	title:<input type="text" name=title style="width:100%"><br>
	content:<textarea name=content  rows="8" style="width:100%" ></textarea><br>
	writer:<input type="text" name=writer style="width:100%" ><br>
	<input type="submit" value="전송">
	
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

</body>
</html>