<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	document.getElementById('modify').addEventListener("click",function(){
		//document.getElementById('modifyForm').mthod="get";
		//document.getElementById('modifyForm').action="/ex/board/modify";
		document.getElementById('modifyForm').submit();
	})
}
</script>
</head>
<body>


<form id="modifyForm" method="post" action="/ex/food/modify" class="board_wrap">
           <div class="board_title">
            <strong>수정하기</strong>
            <p>자유롭게 수정하세요</p>
          </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name=title value='${boardDto.title }' ></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>bno</dt>
                        <dd><input type="text" name=bno  value='${boardDto.bno }' readonly="readonly"></dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text"  value="${boardDto.writer }"  readonly="readonly"></dd>
                    </dl>
                    
                </div>
                <div class="cont" name=content>
                   <textarea name=content  rows="8" style="width:100%">${boardDto.content }</textarea>
                </div>
            </div>
            
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <button id=modify > SAVE</button>
	    <button id=listAll > Cancel</button>
</form>


</body>
</html>