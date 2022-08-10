<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="/ex/resources/css/acco/styledetail.css">


<title>${accoDto.acco_name }</title>
</head>
<body>
	<!-- ============== 헤더 =============== -->
	<%@include file="../../header.jsp"%>
	<!-- ============== 헤더 =============== -->
	<div id="wrap">

		<div class="intro_bg">
			<div class="intro_text">
				<h3 class="">${accoDto.acco_name }</h3>
				<div class="tag_area">
					<p class="best_tag">
						${accoDto.acco_tag1 } ${accoDto.acco_tag2 } ${accoDto.acco_tag3 } ${accoDto.acco_tag4 }
					</p>
				</div>

				<div class="information">

					<div class="clear">
						<p class="info_sub_tit">주소</p>
						<p class="info_sub_cont">제주특별자치도 제주시 애월읍 평화로 2476</p>
					</div>
					<div class="clear">
						<p class="info_sub_tit">연락처</p>
						<p class="info_sub_cont">(+82) 010-8307-0531</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<hr>
			<div class="wrap">
				<div class="event">
					<div class="event_area">

						<div class="event_img">
							<img src="/ex/resources/img/acco/나미송2.jpg" alt="나미송 머무는 곳 이미지 2"
								width="100%">
						</div>
					</div>
					<div class="event_area">

						<div class="event_img">
							<img src="/ex/resources/img/acco/나미송3.jpg" alt="나미송 머무는 곳 이미지 3"
								width="100%">
						</div>
					</div>
					<div class="event_area_text">
						애월읍 시인의 마을에 위치한 나미송 머무는 곳 민박은 요즘 찾아보기 힘든 '진짜' 민박집이다.<br> 일찍이
						제주도로 내려온 주인장이 가꿔온 삶의 터전으로 여행객들에게 관광이 아닌 여행의 길라잡이가 되어 조용하고 편히 쉴 수
						있는 공간을 빌려준다.<br> 한밤의 풀벌레 소리와 하늘을 수놓은 듯한 별밤은 오늘만큼 삶의 무거운 짐을
						내려놓기를 권한다.<br> 특히 제주시에서 탄소없는 제주시의 일환으로 선정한 '곱들락허게 잘 가꾼 집'에도
						선정될 정도로 아기자기하고 아름답게 꾸며진 집과 정원은 보는 것만으로도 힐링이 된다.<br> <br>
						나미송에서 여행자들이 머무는 곳은 누리채로 2층 독채이다. 기본적으로 1층과 2층은 따로 예약을 받고 있다.<br>
						1층은 방과 화장실이 2개씩, 그리고 주방이 갖춰져 있다. 2층은 원룸 구조로 간이 주방과 욕실을 갖추고 있다.<br>
						평소에는 2층으로 향하는 계단이 외부로 분리되어 있지만, 1층과 2층을 함께 예약하면 내부에서 이동할 수 있다.<br>
						주변 관광지로는 렛츠런파크, 항몽 유적지, 한라수목원 등이 있으며 제주 국제공항으로부터 승용차로 약 20분이 소요된다.<br>
					</div>
					<div class="event_area">

						<div class="event_img">
							<img src="/ex/resources/img/acco/나미송4.jpg" alt="나미송 머무는 곳 이미지 4"
								width="100%">
						</div>
					</div>
					<div class="event_area">

						<div class="event_img">
							<img src="/ex/resources/img/acco/나미송5.jpg" alt="나미송 머무는 곳 이미지 5"
								width="100%">
						</div>
					</div>
				</div>
				<div class="event_area_text">
					<h2>리뷰</h2>
					<table border="1" width='100%' id='review' style="text-align: center;">
						<tr>
							<th>id</th>
							<th>리뷰내용</th>
						</tr>

						<c:forEach items="${list }" var="AccoReviewDto" >
							<tr>
								<td>${AccoReviewDto.ano }</td>
								<td>${AccoReviewDto.content }</td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>
		</div>

		<%@include file="../../footer.jsp"%>
	</div>



</body>
</html>
