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
				<div class="intro_text" id="MonthLink">
					<h1>축제와 행사</h1>
					<h4>제주도 축제와 행사</h4>
				</div>
				<ul class="month">
					<li><a href="#MonthLink" class="selectMonth" id="0m" onclick="selectAll()">전체</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="1m" onclick="inputMonth(1)">1월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="2m" onclick="inputMonth(2)">2월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="3m" onclick="inputMonth(3)">3월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="4m" onclick="inputMonth(4)">4월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="5m" onclick="inputMonth(5)">5월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="6m" onclick="inputMonth(6)">6월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="7m" onclick="inputMonth(7)">7월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="8m" onclick="inputMonth(8)">8월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="9m" onclick="inputMonth(9)">9월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="10m" onclick="inputMonth(10)">10월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="11m" onclick="inputMonth(11)">11월</a></li>
					<li><a href="#MonthLink" class="selectMonth" id="12m" onclick="inputMonth(12)">12월</a></li>
				</ul>
				<hr>
				<button type="button"><a href="modify/festivalCreate">컨텐츠 추가</a></button>
				<div class="event" id="eventList">
					<c:forEach items="${list }" var="festivalDto">
						<div class="event_area">
							<a href="detail/festivalDetail?fno=${festivalDto.fno }&fname=${festivalDto.fname}">
								<div class="event_area_img">
									<img src="${festivalDto.imglink }">
								</div>
								<div class="event_area_text">
									<h2>${festivalDto.fname }</h2>
									<p class="event_content">${festivalDto.fcontent }</p>
									<p class="event_date"><input type="hidden" class="start_date" value="${festivalDto.fstart_date }">${festivalDto.fstart_date } ~
										<input type="hidden" class="end_date" value="${festivalDto.fend_date }">${festivalDto.fend_date }</p>
									<p class="event_local">${festivalDto.flocation } >
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
<script src="/ex/resources/js/festival/selectMonth.js"></script>
</html>