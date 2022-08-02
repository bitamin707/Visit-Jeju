<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style>
	a {
		text-decoration: none;
	}
</style>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	<ul>
		<li><h3><a href="main/main">메인 홈페이지</a></h3></li>
		<li><h3><a href="acco/jeju">숙박 홈페이지</a></h3></li>
		<li><h3><a href="festival/festival">축제 홈페이지</a></h3></li>
		<li><h3><a href="shopping/main/Main">쇼핑 홈페이지</a></h3></li>
		<li><h3><a href="food/page1">음식 홈페이지</a></h3></li>
	</ul>
</body>
</html>
