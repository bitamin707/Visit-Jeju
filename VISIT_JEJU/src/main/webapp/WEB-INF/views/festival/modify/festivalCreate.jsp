<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;700&display=swap"
	rel="stylesheet">
<title>컨텐츠 추가 페이지</title>

<script>
	function goList() {
		location.href="/ex/festival/festival";
	}
	
	function submitBtn() {
		const startDate = document.getElementById("fstart_date").value;
		const endDate = document.getElementById("fend_date").value;
		const createForm = document.getElementById("createForm");
		
		if(startDate > endDate) {
			alert("종료 날짜를 시작 날짜 이후로 설정해 주세요.");
		}
		else {
			createForm.submit();
		}
		
	}
</script>

<style>
	* {
		margin: 0 auto;
		border-collapse: collapse;
		font-size: 15px;
		text-decoration: none;
	}
	
	table {
		text-align: center;
	}
	th {
		width: 100px;
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
		width: 700px;
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
			<form id="createForm" action="festivalCreate" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<table>
					<input type="hidden" name="fno" value="${festivalDto.fno }" >
					<tr>
						<th colspan="2"><h2 style="text-align:center; font-size:30px;">축제 추가 페이지</h2> </th>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="fname" value="${festivalDto.fname }" required></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><input type="text" name="fcontent" value="${festivalDto.fcontent }"></td>
					</tr>
					<tr>
						<th>시작 날짜</th>
						<td><input type="date" id="fstart_date" name="fstart_date" value="${festivalDto.fstart_date }" style="width:auto;" required></td>
					</tr>
					<tr>
						<th>종료 날짜</th>
						<td><input type="date" id="fend_date" name="fend_date" value="${festivalDto.fend_date }" style="width:auto;" required></td>
					</tr>
					<tr>
						<th>위치</th>
						<td><input type="text" name="flocation" value="${festivalDto.flocation }"></td>
					</tr>
					<tr>
						<th>지역</th>
						<td><input type="text" name="fregion" value="${festivalDto.fregion }"></td>
					</tr>
					<tr>
						<th>이미지경로</th>
						<td><input type="text" name="imglink" value="${festivalDto.imglink }"></td>
					</tr>
					<tr>
						<td colspan="2"> 
							<button type="button" onclick="submitBtn()">추가</button>
							<button type="button" onclick="goList()">취소</button>
						</td>
					</tr>
				</table>
				
			</form>
		</section>
	</div>
</body>
</html>