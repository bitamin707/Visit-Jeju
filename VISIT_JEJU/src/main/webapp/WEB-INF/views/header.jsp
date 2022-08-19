<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css"
	href="/ex/resources/css/style_header.css">
<link rel="stylesheet" type="text/css"
	href="/ex/resources/css/style_footer.css">

<div id="header">
	<div id="container">
		<h1 class="logo">
			<a href="/ex/main/main"><img id="img1"
				src="/ex/resources/img/jeju.png"></a>
		</h1>
		<nav class="menu">
			<ul class="depth">
				<li><a class="menu_a" href="/ex/acco/jeju">숙박</a></li>
				<li><a class="menu_a" href="/ex/festival/festival">축제</a></li>
				<li><a class="menu_a" href="/ex/shopping/main/Main">쇼핑</a></li>
				<li><a class="menu_a" href="/ex/tour/main1">관광지</a></li>
				<li><a class="menu_a" href="/ex/food/page1">음식</a></li>
			</ul>
		</nav>
		<div class="language-wrap">
			<a href="/ex/main/loginPage" id="login">로그인</a>
				<form:form action="${pageContext.request.contextPath}/main/logout" method="POST" id="logoutForm">
					<button id="logout" type="input" display="none" value="로그아웃"><h3>로그아웃</h3></button>
				</form:form>
		</div>
	</div>
</div>

	<script type="text/javascript">
	var check = "${Check}"
	if(check == "관리자" || check == "회원"){
		document.getElementById("login").href="";
		document.getElementById("login").innerText = "${userid}" + "님 안녕하세요";
		document.getElementById("logout").style.display = "block";	
	}else if(check == ""){
		document.getElementById("login").href="/ex/main/loginPage";
		document.getElementById("login").innerText = "로그인";
		document.getElementById("logoutForm").style.display = "none";
		document.getElementById("logout").style.display = "none";
	}	
	</script>