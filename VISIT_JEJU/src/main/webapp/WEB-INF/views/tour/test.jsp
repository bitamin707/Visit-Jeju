<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
<link rel="stylesheet" href="/ex/resources/css/tour/style2.css?after">
<meta charset="UTF-8">
<title>test</title>

<style>



</style>

</head>
<body>


	<div class="rvw">
		<form action="/ex/tour/test" method="post">
			<div class="rvw_input">
				<div class="rvw_btn">
					<input type="submit" value="등록">
				</div>
				<div class="rvw_inesrt">
				 	<input type="hidden" name=t_writer value="닉네임"/>
					<input type="text" name=t_content placeholder="후기를 작성해주세요."/>
				</div>
			</div>
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			
        </form>
         
         
        
        
        	<div class="rvw_line">
	          <hr width="660px;" >
	        </div>
        
   		<c:forEach items="${list }" var="TourReviewsDto">
   		
		<div class="rvw_list">
			<div class="rvw_info">
				<h3>${TourReviewsDto.t_writer }</h3>
				<p><fmt:formatDate pattern="yy.MM.dd" value="${TourReviewsDto.t_regdate }"/></p>
			</div>
			<div class="rvw_content">
				<p>${TourReviewsDto.t_content }</p>
			</div>
		</div>
		
		</c:forEach>
	
	</div>
	
	
</body>
</html>