<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<c:set var="check" value="false"/>
	<c:if test="${userid ne '비회원' }">
		<c:forEach items="${reviews }" var="festival_reviewDto">
			<c:if test="${userid eq festival_reviewDto.username and fno eq festival_reviewDto.fno }">
				<c:set var="check" value="true"/>
			</c:if>
		</c:forEach>
		
		<!-- 해당 축제 번호에 로그인한 아이디가 리뷰 작성을 했으면 -->
		<!-- 리뷰 수정 -->
		<c:if test="${check eq 'true' }">
			<form action="/ex/festival/modify/festival_reviewModify" id="review_form" name="form" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<input type="hidden" name="fno" value="${festival_detailDto.fno }" type="number"> 
				<input type="hidden" name="username" value="${userid }">

				<div class="review_box">
					<div class="review_login">
						<div class="starDiv">
							<fieldset class="starFieldset">
								<input type="radio" name="rating" value="5" id="rate1" checked=true>
									<label for="rate1">★</label> 
								<input type="radio" name="rating" value="4" id="rate2">
									<label for="rate2">★</label> 
								<input type="radio" name="rating" value="3" id="rate3">
									<label for="rate3">★</label> 
								<input type="radio" name="rating" value="2" id="rate4">
									<label for="rate4">★</label> 
								<input type="radio" name="rating" value="1" id="rate5">
									<label for="rate5">★</label>
							</fieldset>
						</div>
					</div>
					<div class="review_cont">
						<textarea rows="3" cols="120" class="review_text" name="rcontent"
							placeholder="리뷰을 입력해 주세요." maxlength="500" required></textarea>
					</div>
					<div class="review_btn_box">
						<button type="button" class="modify_btn" onclick="review_modify()">수정</button>
						<button type="button" class="delete_btn" onclick="review_delete()">삭제</button>
					</div>
				</div>
			</form>
		</c:if>
		
		<!-- 해당 축제 번호에 로그인한 아이디가 리뷰 작성을안했으면 -->
		<!-- 리뷰 생성 -->
		<c:if test="${check eq 'false' }">
			<form action="/ex/festival/modify/festival_reviewCreate" id="review_form" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<input type="hidden" name="fno" value="${festival_detailDto.fno }" type="number"> 
				<input type="hidden" name="username" value="${userid }">
				
				<div class="review_box">
					<div class="review_login">
						<div class="starDiv">
							<fieldset class="starFieldset">
								<input type="radio" name="rating" value="5" id="rate1" checked=true>
									<label for="rate1">★</label> 
								<input type="radio" name="rating" value="4" id="rate2">
									<label for="rate2">★</label> 
								<input type="radio" name="rating" value="3" id="rate3">
									<label for="rate3">★</label> 
								<input type="radio" name="rating" value="2" id="rate4">
									<label for="rate4">★</label> 
								<input type="radio" name="rating" value="1" id="rate5">
									<label for="rate5">★</label>
							</fieldset>
						</div>
					</div>
				
					<div class="review_cont">
						<textarea rows="3" cols="120" class="review_text" name="rcontent"
							placeholder="리뷰을 입력해 주세요." maxlength="500" required></textarea>
					</div>
					<div class="review_btn_box">
						<button type="submit" class="review_btn">등록</button>
					</div>
				</div>
			</form>
		</c:if>
	</c:if>
	<script>
		function review_modify() {
		const form = document.form;
		const rcontent = document.getElementsByClassName("review_text")[0];
		console.log(rcontent.value);
			if(rcontent.value == null)
				alert("리뷰를 입력해 주세요.")
			else {
				if (confirm("수정하시겠습니까??") == true) {
								
					form.submit();
				} else { //취소
					return false;
				}
			}
		}
		function review_delete() {
			const form = document.form;
			form.action = "/ex/festival/modify/festival_reviewDelete";
			if (confirm("삭제하시겠습니까??") == true) {
				form.submit();
			} else { //취소
				return false;
			}
		}
	</script>
</body>
</html>