<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/ex/resources/css/food/review.css">
<link rel="stylesheet" href="/ex/resources/css/food/media.css">
<title>Insert title here</title>
<script>
window.onload=function(){
	document.getElementById('listAll').addEventListener("click",function(){
		location.href="/ex/food/listAll";
	})
	document.getElementById('remove').addEventListener("click",function(){
		location.href="/ex/food/remove?bno=${boardDto.bno}";
	})
	document.getElementById('modify').addEventListener("click",function(){
		location.href="/ex/food/modify?bno=${boardDto.bno}";
	})
}
</script>
</head>
<body>


 <div class="board_wrap">
        <div class="board_title">
            <strong>자세히 보기</strong>
            <p>자세히 보세요.</p>
        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                   ${boardDto.title }
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>${boardDto.bno }</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>${boardDto.writer }</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${boardDto.regdate }" /></dd>
                    </dl>
                    <dl>
                        <dt>좋아요</dt>
                        <dd>${boardDto.likecount }</dd>
                    </dl>
                </div>
                <div class="cont">
                   ${boardDto.content }
                </div>
            </div>
            <div class="bt_wrap">
	            <button id=listAll >List  All</button>
				<button id=remove >remove</button>
				<button id=modify >modify</button>	
            </div>
        </div>
    </div>

</body>
</html>