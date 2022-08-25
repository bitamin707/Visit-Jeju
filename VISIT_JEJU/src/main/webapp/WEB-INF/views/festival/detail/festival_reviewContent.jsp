<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!--  관리자 아이디로 로그인 시 -->
	<c:if test="${Check eq '관리자' }">
	<c:forEach items="${reviews }" var="festival_reviewDto">
		<br>
		<div class="review_box">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<input type="hidden" name="fno" value="${festival_detailDto.fno }" type="number" id="fno">
		<input type="hidden" class="starValue" value="${festival_reviewDto.rating }">
			<table class="review_table">
				<tr>
					<td class="reviewer">${festival_reviewDto.username }</td>
					<td class="rating">
						<div class="starDiv">
							<fieldset class="showStarFieldset">
								<input type="checkbox" name="rating" value="5" class="srate5">
									<label for="srate5">★</label> 
									
								<input type="checkbox" name="rating" value="4" class="srate4"> 
									<label for="srate4">★</label> 
									
								<input type="checkbox" name="rating" value="3" class="srate3"> 
									<label for="srate3">★</label>

								<input type="checkbox" name="rating" value="2" class="srate2">
									<label for="srate2">★</label> 
									
								<input type="checkbox" name="rating" value="1" class="srate1"> 
									<label for="srate1">★</label>
									
							</fieldset>
						</div>
					</td>
					<td class="review_date">${festival_reviewDto.rdate }</td>
				</tr>
				<tr>
					<td colspan="3" class="review_content">${festival_reviewDto.rcontent }
					<button type="button" class="delete_btn"><a href="/ex/festival/modify/festival_admin_reviewDelete?fno=${festival_detailDto.fno }&username=${festival_reviewDto.username }">삭제</a></button>
					</td>
				</tr>
			</table>
		</div>
	</c:forEach>
	</c:if>
	
	<!--  사용자 아이디로 로그인 시 -->
	<c:if test="${Check ne '관리자' }">
	<c:forEach items="${reviews }" var="festival_reviewDto">
		<br>
		<div class="review_box">
			<table class="review_table">
				<tr>
					<td class="reviewer">${festival_reviewDto.username }</td>
					<td class="rating"><input type="hidden" class="starValue" value="${festival_reviewDto.rating }">
						<div class="starDiv">
							<fieldset class="showStarFieldset">
								<input type="checkbox" name="rating" value="5" class="srate5">
									<label for="srate5">★</label> 
									
								<input type="checkbox" name="rating" value="4" class="srate4"> 
									<label for="srate4">★</label> 
									
								<input type="checkbox" name="rating" value="3" class="srate3"> 
									<label for="srate3">★</label>

								<input type="checkbox" name="rating" value="2" class="srate2">
									<label for="srate2">★</label> 
									
								<input type="checkbox" name="rating" value="1" class="srate1"> 
									<label for="srate1">★</label>
									
							</fieldset>
						</div>
					</td>
					<td class="review_date">${festival_reviewDto.rdate }</td>
				</tr>
				<tr>
					<td colspan="3" class="review_content">${festival_reviewDto.rcontent }
					</td>
				</tr>
			</table>
		</div>
		
	</c:forEach>
	</c:if>
	<script type="text/javascript" src="/ex/resources/js/festival/review.js"></script>
</body>
</html>