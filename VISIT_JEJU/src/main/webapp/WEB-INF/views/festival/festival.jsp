<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/ex/resources/css/festival/style_festival.css">
<title>축제와 일정</title>

</head>
<body>
	<%@include file="../header.jsp"%>

	<div class="wrap">
		<section>
			<div class="intro_bg"></div>
			<div class="content">
				<div class="intro_text">
					<h1>축제와 행사</h1>
					<h4>제주도 축제와 행사</h4>
				</div>
				<ul class="month">
					<li><a href="#" class="0m">전체</a></li>
					<li><a href="#1" class="1m">1월</a></li>
					<li><a href="#2" class="2m">2월</a></li>
					<li><a href="#3" class="3m">3월</a></li>
					<li><a href="#4" class="4m">4월</a></li>
					<li><a href="#5" class="5m">5월</a></li>
					<li><a href="#6" class="6m">6월</a></li>
					<li><a href="#7" class="7m">7월</a></li>
					<li><a href="#8" class="8m">8월</a></li>
					<li><a href="#9" class="9m">9월</a></li>
					<li><a href="#10" class="10m">10월</a></li>
					<li><a href="#11" class="11m">11월</a></li>
					<li><a href="#12" class="12m">12월</a></li>
				</ul>
				<hr>
				<button type="button"><a href="modify/festivalCreate">컨텐츠 추가</a></button>
				<div class="event">
					<c:forEach items="${list }" var="festivalDto">
						<div class="event_area">
							<a href="detail/${festivalDto.fname }">
								<div class="event_area_img">
									<img src="${festivalDto.imglink }">
								</div>
								<div class="event_area_text">
									<h2>${festivalDto.fname }</h2>
									<p class="event_content">${festivalDto.fcontent }</p>
									<p class="event_date">${festivalDto.fstart_date }~
										${festivalDto.fend_date }</p>
									<p class="event_local">${festivalDto.flocation }>
										${festivalDto.fregion }</p>
								</div>
							</a>
							<button type="button"><a href="modify/festivalModify?fno=${festivalDto.fno }">수정</a></button>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<%@include file="../footer.jsp"%>
	</div>
</body>
</html>