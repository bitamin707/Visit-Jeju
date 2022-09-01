<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>REVIEW</title>
<link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
<link rel="stylesheet" href="/ex/resources/css/tour/style2.css?after">
<link rel="stylesheet" type="text/css" href="/ex/resources/css/style_footer.css">

<style>

/*tableStart*/


.tour_bor{
	margin-top:150px;
	margin-bottom:100px;
}

.tour_bor h2{
	font-size: 30px;
	margin-bottom:15px;
}

#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
  
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: rgb(255, 165, 0);
  color: white;
}
/*tableEnd*/
</style>

<script>

var result='${msg}';
if(result=='success'){
	alert('처리가 완료되었습니다.');
}

window.onload=function(){
	document.getElementsByClassName("btn")[0].addEventListener("click",function(){
		location.href="/ex/tour/board/register";
	});
}

</script>

</head>
<body>

<!-- ============== 헤더 =============== -->
	<%@include file="../../header.jsp"%>
<!-- ============== 헤더 =============== -->

<div class=tour_bor>

	<h2>REVIEW</h2>
	<table boarder="1" width="90%" id="customers">
		<tr>
		<th>bno</th>
		<th>title</th>
		<th>writer</th>
		<th>regdate</th>
		<th>viewCount</th>
		</tr>
		<c:forEach items="${list }" var="TourboardDto">
		<tr>
			<td>${TourboardDto.bno }</td>
			<td><a href='/ex/tour/board/read?bno=${TourboardDto.bno}'>
			${TourboardDto.title }</a></td>
			<td>${TourboardDto.writer }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" 
			value="${TourboardDto.regdate }" /> </td>
			<td>${TourboardDto.viewcnt }</td>		
		</tr>
		</c:forEach>
	</table>
	<button class="btn"> 글쓰기</button>
	
</div>



  <footer id="footer">
    <div class="footer_wrap">
        <div class="footer_title">
            <div class="footer_box">
                <img src="/ex/resources/img/jeju.png" style="margin-top: 30px; display: inline-block;" >
            </div>
        </div>
        <div id="v-line"></div>
        <div class="footer_intro">
            <div class="footer_box">
                <table class="footer_table">
                    <tr><th>메인gg</th><td>gg누구</td><th>숙박gg</th><td>누구gg</td></tr>
                    <tr><th>축제</th><td>누구</td><th>쇼핑</th><td>누구</td></tr>
                    <tr><th>관광지</th><td>누구</td><th>음식</th><td>누구</td></tr>
                    <tr><th>일정공유</th><td>누구</td></tr>
                </table>
            </div>
        </div>
    </div>
  </footer>

</body>
</html>