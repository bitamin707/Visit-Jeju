<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>공지사항</title>
<link rel="stylesheet" href="/ex/resources/css/food/review.css">
<link rel="stylesheet" href="/ex/resources/css/food/media.css">
<script>
var result='${msg}';
if(result=='success'){
	alert('처리가 완료되었습니다.');
}
//result는  글을 등록하고 들어오면  success가 들어 있고,
//직접들어오면 아무것도 담겨있지 않는다.

window.onload=function(){
	document.getElementsByClassName("on")[0]
	.addEventListener("click",function(){
		location.href="/ex/food/register";
	});
}
</script>
</head>
<body>


 <div class="board_wrap">
        <div class="board_title">
            <strong>리뷰</strong>
            <p>자유롭게 리뷰 작성</p>
        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">글쓴이</div>
                    <div class="date">작성일</div>
                    <div class="likecount">좋아요</div>
                </div>
                <c:forEach items="${list }" var="boardDto">
                <div>
                    <div class="num">${boardDto.bno }</div>
                    <div class="title"><a href='/ex/food/read?bno=${boardDto.bno}'> ${boardDto.title }</a></div>
                    <div class="writer">${boardDto.writer }</div>
                    <div class="date"><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" 
		value="${boardDto.regdate }" /></div>
                    <div class="likecount">${boardDto.likecount }</div>
                </div>
                </c:forEach>
                
            </div>
           
          
                <button class="on">글쓰기</button>
          
        </div>
    </div>
 

</body>
</html>





