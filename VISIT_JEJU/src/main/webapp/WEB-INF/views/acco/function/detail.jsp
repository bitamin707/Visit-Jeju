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

		<div class="intro_bg"
			style="background-image: url(${accoDto.acco_photo });">
			<div class="intro_text">
				<h3 class="">${accoDto.acco_name }</h3>
				<div class="tag_area">
					<p class="best_tag">${accoDto.acco_tag1 }${accoDto.acco_tag2 }
						${accoDto.acco_tag3 } ${accoDto.acco_tag4 }</p>
				</div>

				<div class="information">

					<div class="clear">
						<p class="info_sub_tit">주소</p>
						<p class="info_sub_cont">${accoDto.acco_detail_address }</p>
					</div>
					<div class="clear">
						<p class="info_sub_tit">연락처</p>
						<p class="info_sub_cont">${accoDto.acco_phonenum }</p>
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
							<img src="${accoDto.acco_detail_photo1 }" alt="사진 1" width="100%">
						</div>
					</div>
					<div class="event_area">

						<div class="event_img">
							<img src="${accoDto.acco_detail_photo2 }" alt="사진 2" width="100%">
						</div>
					</div>
					<div class="event_area_text">${accoDto.acco_detail_content }
					</div>
					<div class="event_area">

						<div class="event_img">
							<img src="${accoDto.acco_detail_photo3 }" alt="사진3" width="100%">
						</div>
					</div>
					<div class="event_area">

						<div class="event_img">
							<img src="${accoDto.acco_detail_photo2 }" alt="사진 4" width="100%">
						</div>
					</div>
				</div>
				<div class="event_area_text">
					<h2>리뷰</h2>
					<table border="1" width='100%' id='review'
						style="text-align: center;">
						<tr>
							<th>ANO</th>
							<th>리뷰내용</th>
							<th>수정 , 삭제</th>
						</tr>

						<c:forEach items="${list }" var="AccoReviewDto">
							<tr>
								<td>${AccoReviewDto.ano }</td>
								<td>${AccoReviewDto.content }</td>
								<td><button type="button">
										<a href='/ex/acco/function/review/delete?ano=${AccoReviewDto.ano }&acco_id=${accoDto.acco_id }'>삭제</a>
									</button>
									<button type="button">
										<a
											href="/ex/acco/function/review/modify?ano=${AccoReviewDto.ano }&acco_id=${accoDto.acco_id }">수정</a>
									</button></td>
							</tr>
						</c:forEach>

					</table>
					<button>
						<a
							href="/ex/acco/function/review/insert?acco_id=${accoDto.acco_id }">리뷰쓰기</a>
					</button>

				</div>
			</div>
		</div>

		<%@include file="../../footer.jsp"%>
	</div>



</body>
</html>
