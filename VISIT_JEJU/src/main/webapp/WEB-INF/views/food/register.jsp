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
	
	
}
</script>
</head>
<body>

<form action="/ex/food/register" method="post">
<div class="board_wrap">
        <div class="board_title">
            <strong>글쓰기</strong>
            <p>자유롭게 작성하세요</p>
        </div>
        <div class="board_write_wrap">
            <div class="board_write">
                <div class="title">
                    <dl>
                        <dt>제목</dt>
                        <dd><input type="text" name=title  placeholder="제목 입력" ></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt>글쓴이</dt>
                        <dd><input type="text" name=writer placeholder="글쓴이 입력"></dd>
                    </dl>
                  
                </div>
                
                 
                 
                <div class="cont">
                    :<textarea name=content  placeholder="내용 입력" ></textarea>
                </div>
            </div>
           
        </div>

                 
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
           <input type="submit" value="전송">
           <button id=listAll > Cancel</button>
          
    </div>
    
 
 </form>
</body>
</html>