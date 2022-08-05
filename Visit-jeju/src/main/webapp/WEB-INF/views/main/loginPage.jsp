<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
    var result='${msg}';
    if(result=='success'){
    	alert('처리가 완료되었습니다.');
    }
    window.onload=function(){
    	document.getElementById('btn').addEventListener("click",function(){
    		location.href="/ex/main/sighup";
    	})
    }
    </script>
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
        height:300px;
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
</head>
<body>

    <div class="entire">
        <img src="https://api.cdn.visitjeju.net/photomng/imgpath/201902/26/b08349e7-88f1-4517-8969-78e9a07e78e9.jpg" style="width:100%; opacity:0.5;">
        <div class="login">
            <div class="interface">
                <form method="POST" action="main" name="infor">
                <input class="input1" type="text" placeholder="Username" name="id"><br><br>        
                <input type="password" class="input1" type="text" placeholder="Password" name="pw"><br><br>
                <input id="loginbt1" type="submit" value="Login">
                <button id="btn" type="button">Sigh up</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>