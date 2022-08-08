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
<body>


	<form method="POST" action="/ex/acco/function/accoModify" name="infor">
	<input type=hidden value="${accoDto.acco_id }" name=acco_id>
		숙소 이름:<input type=text name=acco_name value="${accoDto.acco_name }">
		<br> 숙소 주소:<select id="select1" name="acco_address1">
			<option value="제주시">제주시</option>
			<option value="서귀포시" selected="selected">서귀포시</option>
		</select> <br> 숙소 상세주소:<select id="select2" name="acco_address2">
			<option value="제주시내" selected="selected">제주시내</option>
			<option value="애월">애월</option>
			<option value="한림">한림</option>
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
		</select><br> <input type="submit" value=전송>
	</form>

</body>
</html>