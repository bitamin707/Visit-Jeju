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
<script type="text/javascript"
	src="/ex/resources/smarteditor/js/service/HuskyEZCreator.js"
	charset="utf-8"></script>
<body>


	<form method="POST" action="/ex/acco/function/accoModify" name="infor">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	<input type=hidden value="${accoDto.acco_id }" name=acco_id>
		숙소 이름:<input type=text name=acco_name value="${accoDto.acco_name }">
		<br> 숙소 주소:<select id="select1" name="acco_address1">
			<option value="제주시">제주시</option>
			<option value="서귀포시" selected>서귀포시</option>
		</select> <br> 숙소 상세주소:<select id="select2" name="acco_address2">
			<option value="제주시내" selected>제주시내</option>
			<option value="애월">애월</option>
			<option value="한림" >한림</option>
			<option value="한경">한경</option>
			<option value="조천">조천</option>
			<option value="구좌">구좌</option>
			<option value="성산">성산</option>
			<option value="서귀포시내">서귀포시내</option>
			<option value="대정">대정</option>
			<option value="안덕">안덕</option>
			<option value="중문">중문</option>
			<option value="남원">남원</option>
			<option value="표선">표선</option>
		</select> <br> 태그1:<select id="select3" name="acco_tag1">
			<option value="#수영장">수영장</option>
			<option value="#관광호텔">관광호텔</option>
			<option value="#독채">독채</option>
			<option value="#휴양펜션">휴양펜션</option>
			<option value="#게스트하우스">게스트하우스</option>
			<option value="#가족호텔">가족호텔</option>
			<option value="#와이파이존">와이파이존</option>
			<option value="" selected="selected">태그없음</option>
		</select> <br> 태그2: <select id="select4" name="acco_tag2">
		<option value="#수영장">수영장</option>
			<option value="#관광호텔">관광호텔</option>
			<option value="#독채">독채</option>
			<option value="#휴양펜션">휴양펜션</option>
			<option value="#게스트하우스">게스트하우스</option>
			<option value="#가족호텔">가족호텔</option>
			<option value="#와이파이존">와이파이존</option>
			<option value="" selected="selected">태그없음</option>
		</select><br> 태그3: <select id="select5" name="acco_tag3">
			<option value="#수영장">수영장</option>
			<option value="#관광호텔">관광호텔</option>
			<option value="#독채">독채</option>
			<option value="#휴양펜션">휴양펜션</option>
			<option value="#게스트하우스">게스트하우스</option>
			<option value="#가족호텔">가족호텔</option>
			<option value="#와이파이존">와이파이존</option>
			<option value="" selected="selected">태그없음</option>
		</select><br> 태그4: <select id="select6" name="acco_tag4">
			<option value="#수영장">수영장</option>
			<option value="#관광호텔">관광호텔</option>
			<option value="#독채">독채</option>
			<option value="#휴양펜션">휴양펜션</option>
			<option value="#게스트하우스">게스트하우스</option>
			<option value="#가족호텔">가족호텔</option>
			<option value="#와이파이존">와이파이존</option>
			<option value="" selected="selected">태그없음</option>
		</select><br>
		<br>상세주소: <input type=text name=acco_detail_address value="${accoDto.acco_detail_address }"><br>
		내용 <br>
		<textarea name="acco_detail_content" id="acco_content" rows="30"
			cols="150" placeholder="숙소 내용" value="${accoDto.acco_detail_content }"></textarea>
		<br>
		사진 1 : <input type=text name=acco_detail_photo1 value="${accoDto.acco_detail_photo1 }"><br>
		사진 2 : <input type=text name=acco_detail_photo2 value="${accoDto.acco_detail_photo2 }"><br>
		사진 3 : <input type=text name=acco_detail_photo3 value="${accoDto.acco_detail_photo3 }"><br>
		사진 4 : <input type=text name=acco_detail_photo4 value="${accoDto.acco_detail_photo4 }"><br>
		숙소 전화번호 : <input type=text name=acco_phonenum value="${accoDto.acco_phonenum }"><br>
		메인사진 : <input type=text name=acco_photo value="${accoDto.acco_photo }">
		<button type="button" onclick="submitContents()" id="submitBtn">작성완료</button>
		<button type="button" onclick="goList()">목록으로</button>
		<button type="reset" style="float: right;">리셋</button>
		 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>

</body>
<script>
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "acco_content",
		sSkinURI : "/ex/resources/smarteditor/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});

	// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	function submitContents(elClickedObj) {
		// 에디터의 내용이 textarea에 적용된다.
		oEditors.getById["acco_content"].exec("UPDATE_CONTENTS_FIELD", []);
		var submitBtn = document.getElementById("submitBtn");
		var value = document.getElementById("acco_content").value;
		console.log(value);
		submitBtn.form.submit();
	}

	function goList() {
		location.href = "/ex/acco/jeju";
	}
</script>
</html>