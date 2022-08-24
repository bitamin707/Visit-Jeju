<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="/ex/resources/css/acco/style12.css">


<title>숙박메인</title>
</head>
<script>
function tagclick(){
	document.getElemetByClassName("tag")
}
</script>
<body>
	<!-- ============== 헤더 =============== -->
	<%@include file="../header.jsp"%>
	<!-- ============== 헤더 =============== -->

	<div class="wrap">

		<div class="intro_bg"></div>
		<!-- 태그부분-->
		<div class="container">
			<div class="intro_text">
				<h1>숙박</h1>

			</div>
			<form>
				<ul class="month">
					<div class="tag1">
						<input id="tag1_수영장" type="checkbox" name="tag" value="수영장">
						<label for="tag1_수영장">#수영장</label> <input id="tag1_관광호텔"
							type="checkbox" name="tag" value="관광호텔"> <label
							for="tag1_관광호텔">#관광호텔</label> <input id="tag1_독채" type="checkbox"
							name="tag" value="독채"> <label for="tag1_독채">#독채</label> <input
							id="tag1_휴양펜션" type="checkbox" name="tag" value="휴양펜션"> <label
							for="tag1_휴양펜션">#휴양펜션</label> <input id="tag1_게스트하우스"
							type="checkbox" name="tag" value="게스트하우스"> <label
							for="tag1_게스트하우스">#게스트하우스</label> <input id="tag1_가족호텔"
							type="checkbox" name="tag" value="가족호텔"> <label
							for="tag1_가족호텔">#가족호텔</label> <input id="tag1_와이파이존"
							type="checkbox" name="tag" value="와이파이존"> <label
							for="tag1_와이파이존">#와이파이존</label>
					</div>


					<div class="regionTag_0">
						<h3>지역별 검색</h3>
						제주시> <input id="region_0_0" type="checkbox" name="region0"
							value="11"> <label for="region_0_0">#제주시내</label> <input
							id="region_0_1" type="checkbox" name="region0" value="12">
						<label for="region_0_1">#애월</label> <input id="region_0_2"
							type="checkbox" name="region0" value="13"> <label
							for="region_0_2">#한림</label> <input id="region_0_3"
							type="checkbox" name="region0" value="14"> <label
							for="region_0_3">#한경</label> <input id="region_0_4"
							type="checkbox" name="region0" value="15"> <label
							for="region_0_4">#조천</label> <input id="region_0_5"
							type="checkbox" name="region0" value="16"> <label
							for="region_0_5">#구좌</label>
					</div>
					<div class="regionTag_1">
						서귀포시> <input id="region_1_0" type="checkbox" name="region1"
							value="20"> <label for="region_1_0">#성산</label> <input
							id="region_1_1" type="checkbox" name="region1" value="21">
						<label for="region_1_1">#서귀포시내</label> <input id="region_1_2"
							type="checkbox" name="region1" value="22"> <label
							for="region_1_2">#대정</label> <input id="region_1_3"
							type="checkbox" name="region1" value="23"> <label
							for="region_1_3">#안덕</label> <input id="region_1_4"
							type="checkbox" name="region1" value="24"> <label
							for="region_1_4">#중문</label> <input id="region_1_5"
							type="checkbox" name="region1" value="25"> <label
							for="region_1_5">#남원</label> <input id="region_1_6"
							type="checkbox" name="region1" value="26"> <label
							for="region_1_6">#표선</label>

					</div>
				</ul>
			</form>
			<button class="modifyBtn">
				<a href="/ex/acco/function/insert">숙박추가</a>
			</button>

			<div class="recommend">
				<div class="order_type">
					게시물 정렬방법 선택 <select id="select1">
						<option value="likecnt">좋아요순</option>
						<option value="reviewcnt" selected="selected">리뷰순</option>
						<option value="title_kr">이름순</option>
					</select> <br> <br>

					<div class="page">
						<button class="prev">이전</button>
						<strong>1</strong> / 1
						<button class="next">다음</button>
					</div>
				</div>
				<br>
				<hr>
				<c:forEach items="${list }" var="AccoDto">
					<div class="event_area">
						<a href="/ex/acco/function/detail?acco_id=${AccoDto.acco_id }">
							<div id="event_area_img">
								<img src="${AccoDto.acco_photo}" alt="메인사진">
							</div>
							<div class="event_area_text">
								<p class="s_tit">
									<strong>${AccoDto.acco_name }</strong>
								</p>
								<p class="region">${AccoDto.acco_address1 }&gt;
									${AccoDto.acco_address2 }</p>
								<span class="tag">${AccoDto.acco_tag1 }</span>
								 <span class="tag">${AccoDto.acco_tag2 } </span><br>
								<span class="tag">${AccoDto.acco_tag3 }</span>
								<span class="tag">${AccoDto.acco_tag4 }</span>
								<p class="like">
									<br> <br> <br> <br> <span>좋아요</span> <span
										class="count">${AccoDto.acco_like} </span> <span>리뷰</span> <span
										class="count">${AccoDto.acco_reviewcounter} </span>
								</p>
								<p
									style="position: relative; text-align: right; margin-right: 10px;">
									<button type="button" class="modifyBtn">
										<a href='/ex/acco/function/delete?acco_id=${AccoDto.acco_id }'>삭제</a>
									</button>
									<button type="button" class="modifyBtn">
										<a
											href="/ex/acco/function/accoModify?acco_id=${AccoDto.acco_id }">수정</a>
									</button>
								</p>
							</div>
						</a>


					</div>
				</c:forEach>

			</div>
		</div>

		<%@include file="../footer.jsp"%>

	</div>
	<script type="text/javascript">
		var modifyBtn = document.getElementsByClassName("modifyBtn")
		var check = "${Check}"
		if (check == "관리자") {
			for(let i = 0; i < modifyBtn.length; i++)
				modifyBtn[i].style.display = "";
		} else {
			for(let i = 0; i < modifyBtn.length; i++)
				modifyBtn[i].style.display = "none";
		}
	</script>

</body>
</html>
