<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta  charset="UTF-8" />
    <title>로그인 페이지</title>
<script>
    window.onload=function(){
		document.getElementById('btn').addEventListener("click",function(){
			location.href="/ex/main/sighup";
		})
	}
</script>
</head>
    <style>
        .entire {
        display: flex;
        justify-content: center; /*수평정렬*/
        align-items: center; /*수직정렬*/
        min-height: 100vh;
        }

        .login {
        position:absolute;
        display:flex;
        justify-content: center;
        align-items: center;
        border-radius: 1rem;
        border:3px solid;
        width:500px;
        height:400px;
        background-color:white;
        }

        .input1 {
            height:40px;
            width:200px;
            border:3px;
            border-style:inset;
        }

        #loginbt2{
            background-color:white;
            width:100px;
            height:30px;
        }

        #loginbt1,#btn{
            background-color:white;
            width:100px;
            height:30px;
            cursor:pointer;
        }
        #loginbt1:hover,#btn:hover{
            background-color:gray;
        }
    </style>
<body>
<c:if test="${param.error != null}">
	<script type="text/javascript">
		alert('아이디나 비밀번호가 잘못되었습니다.')
		location.href='/ex/main/loginPage';
	</script>
</c:if>
<c:if test="${param.logout != null}">
	<script type="text/javascript">
		alert('로그아웃 하셨습니다.')
	</script>
</c:if>
    <div class="entire">
        <img src="https://api.cdn.visitjeju.net/photomng/imgpath/201902/26/b08349e7-88f1-4517-8969-78e9a07e78e9.jpg" style="width:100%; opacity:0.5;">
        <div class="login">
            <div class="interface">
            <a href="/ex/main/main"><img style="width:210px; height:75px;" id="img1" src="/ex/resources/img/main/jeju.png"></a>
            <br><br><br>
            <c:url value="/login" var="loginUrl"/>
                <form method="POST" action="${loginUrl}" name="infor">
                <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
                <input class="input1" type="text" placeholder="Username" name="username"><br><br>        
                <input type="password" class="input1" type="text" placeholder="password" name="password"><br><br>
                <input id="loginbt1" type="submit" value="Login">
                <button id="btn" type="button">Sigh up</button>
                </form>
            </div>
        </div>
    </div>
<br>

</body>
</html>
