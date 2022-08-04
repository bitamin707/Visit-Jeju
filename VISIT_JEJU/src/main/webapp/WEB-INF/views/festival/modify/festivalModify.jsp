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
<title>컨텐츠 수정 페이지</title>

<style>
	* {
		margin: 0 auto;
		border-collapse: collapse;
		font-size: 15px;
	}
	
	table {
		width: auto;
		height: auto;
	}
	input {
		width: auto;
	}		

</style>

</head>
<body>
	<div class="wrap">
		<section>
			<form action="festivalModify" method="POST">
				<table>
					<tr>
						<th>번호</th>
						<td><input type="hidden" name="fno" value="${festivalDto.fno }">${festivalDto.fno }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="fname" value="${festivalDto.fname }"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><input type="text" name="fcontent" value="${festivalDto.fcontent }"</td>
					</tr>
					<tr>
						<th>시작 날짜</th>
						<td> ${festivalDto.fstart_date } > 
						<input type="date" name="fstart_date" value="${festivalDto.fstart_date }"</td>
					</tr>
					<tr>
						<th>종료 날짜</th>
						<td> ${festivalDto.fend_date } > 
						<input type="date" name="fend_date" value="${festivalDto.fend_date }"</td>
					</tr>
					<tr>
						<th>위치</th>
						<td><input type="text" name="flocation" value="${festivalDto.flocation }"</td>
					</tr>
					<tr>
						<th>지역</th>
						<td><input type="text" name="fregion" value="${festivalDto.fregion }"</td>
					</tr>
					<tr>
						<th>이미지경로</th>
						<td><input type="text" name="imglink" value="${festivalDto.imglink }"</td>
					</tr>
					<tr>
						<td colspan="2"> 
							<button type="submit">수정</button>
							<button type="button">취소</button>
						</td>
					</tr>
				</table>
			</form>
		</section>
	</div>
</body>
</html>