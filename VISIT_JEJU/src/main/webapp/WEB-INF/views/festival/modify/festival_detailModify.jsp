<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>컨텐츠 수정 페이지</title>
<script type="text/javascript"
	src="/ex/resources/smarteditor/js/service/HuskyEZCreator.js"
	charset="utf-8"></script>
<style>
* {
	margin: 0 auto;
	border-collapse: collapse;
	font-size: 15px;
	text-decoration: none;
}

table {
	width: 1230px;
	text-align: center;
}

th {
	width: 200px;
	border: 1px solid black;
	padding-left: 5px;
}

td {
	width: auto;
	border: 1px solid black;
	text-align: left;
	padding-left: 5px;
}

th {
	text-align: left;
}

input {
	width: 1000px;
	border: none;
	height: 30px;
}

button {
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="wrap">
		<section>
			<form action="festival_detailModify" method="POST">
			
				<table>
					<tr>
						<th colspan="2"><h2
								style="text-align: center; font-size: 30px;">축제 세부 페이지 수정</h2>
						</th>
					</tr>
					<tr>
						<th>번호</th>
						<td><input type="text" name="fno" value="${festival_detailDto.fno }" readonly></td>
					</tr>
					<tr>
						<th>축제 제목</th>
						<td><input type="text" name="fname" value="${changeFname }" readonly></td>
					</tr>
					<tr>
						<th>백그라운드이미지</th>
						<td><input type="text" name="fbg" value="${festival_detailDto.fbg }" placeholder="백그라운드이미지"></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" name="faddress" value="${festival_detailDto.faddress }" placeholder="주소"></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" name="ftel" value="${festival_detailDto.ftel }" placeholder="전화번호"></td>
					</tr>
					<tr>
						<th>홈페이지</th>
						<td><input type="text" name="fhomepage" value="${festival_detailDto.fhomepage }" placeholder="홈페이지 주소"></td>
					<tr>
						<td colspan="2"><textarea name="fcontent" id="ir1" rows="30"
								cols="150" placeholder="축제 내용">${festival_detailDto.fcontent }</textarea></td>
					</tr>
					<tr>
						<th>이미지 1</th>
						<td><input type="text" name="fimg1" value="${festival_detailDto.fimg1 }" placeholder="이미지1"></td>
					</tr>
					<tr>
						<th>이미지 2</th>
						<td><input type="text" name="fimg2" value="${festival_detailDto.fimg2 }" placeholder="이미지2"></td>
					</tr>
					<tr>
						<th>이미지 3</th>
						<td><input type="text" name="fimg3" value="${festival_detailDto.fimg3 }" placeholder="이미지3"></td>
					</tr>
					<tr>
						<th>이미지 4</th>
						<td><input type="text" name="fimg4" value="${festival_detailDto.fimg4 }" placeholder="이미지4"></td>
					</tr>
					<tr>
						<th>이미지 5</th>
						<td><input type="text" name="fimg5" value="${festival_detailDto.fimg5 }" placeholder="이미지5"></td>
					</tr>
					<tr>
						<td colspan="2"><button type="button"
								onclick="submitContents()" id="submitBtn">수정완료</button>
							<button type="button" onclick="goList()">목록으로</button>
					</tr>
				</table>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</section>
	</div>
</body>
<script>
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef : oEditors,
		elPlaceHolder : "ir1",
		sSkinURI : "/ex/resources/smarteditor/SmartEditor2Skin.html",
		fCreator : "createSEditor2"
	});

	// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
	function submitContents(elClickedObj) {
		// 에디터의 내용이 textarea에 적용된다.
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
		var submitBtn = document.getElementById("submitBtn");
		var value = document.getElementById("ir1").value;
		console.log(value);
		submitBtn.form.submit();
	}

	function goList() {
		location.href = "/ex/festival/festival";
	}
</script>
</html>
