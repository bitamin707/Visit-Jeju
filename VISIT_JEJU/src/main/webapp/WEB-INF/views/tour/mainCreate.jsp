<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>관광지추가</title>
  <link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
  <link rel="stylesheet" href="/ex/resources/css/tour/style.css">
</head>
<body>

<form action="/ex/tour/mainCreate" method="POST">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	
	<input type="hidden" name="tno" >
	IMGLINK:<input type="text" name="imglink"><br>
	NAME:<input type="text" name="tname"><br>
	ADDRESS:<input type="text" name="tadrs"><br>
	INFO:<input type="text" name="tinfo"><br>
	<input type="submit" value="전송">

</form>
</body>
</html>