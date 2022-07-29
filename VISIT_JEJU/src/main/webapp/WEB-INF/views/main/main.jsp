<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%-- 	<script src="${path}/WEB-INF/view/main/main.jsp"></script>
	<link href="${path}/resources/css/style(~body).css" rel="stylesheet"/>  --%>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap" rel="stylesheet">
<title>메인 화면</title>
<script>
var result='${msg}';
if(result=='success'){
	alert('처리가 완료되었습니다.');
}

window.onload=function(){
	document.getElementsByClassName("bestBT")[0]
	.addEventListener("click",function(){
		location.href="/ex/main/bestList";
	});
	
	document.getElementsByClassName("foodBestBT")[0]
	.addEventListener("click",function(){
		location.href="/ex/main/foodBestModify";
	});
	
	document.getElementsByClassName("foodBT")[0]
	.addEventListener("click",function(){
		location.href="/ex/main/foodList";
	});
	
	document.getElementsByClassName("merchBT")[0]
	.addEventListener("click",function(){
		location.href="/ex/main/merchList";
	});
}

let slideIndex = 2;
showSlides(slideIndex);

function plusSlides(n) {
showSlides(slideIndex += n);
}

function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
let i;
let slides = document.getElementsByClassName("mySlides");
let dots = document.getElementsByClassName("dot");
if (n > slides.length) {
    slideIndex = 1
}    
if (n < 1) {
    slideIndex = slides.length
}
for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
}
for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
}
slides[slideIndex-1].style.display = "block";  
dots[slideIndex-1].className += " active";
}

</script>
<style>

/* =========== 웹페이지 폰트 스타일 미지정============= */
* {
    list-style: none;
    text-decoration: none;
    border-collapse: collapse;
    margin: 0px;
    padding: 0px;
    color: black;
}
/* ====================================================== */

/* ======================= 상단 ========================= */
/* ================ 헤더 (건들지 마시오) ================= */

/* 헤더 틀 */
#header{
    height: 110px;
    background: rgba(0,0,0,.3);
    width: 100%;
    left: 0;
    top: 0;
    z-index: 600;
    border-bottom: 1px solid hsla(0,0%,100%,.3);
    position: fixed;
    /* position: absolute; */
    background: rgb(246, 246, 246);
    border-bottom-color: #ccc;
    display: block;
}

/* 헤더 안에 컨테이너 박스 */
#container{
    margin: 0 auto;
    height: 90px;
    width: 1290px;
    max-width: 100%;
    display: -webkit-box;
    -webkit-box-pack: justify;
    justify-content: space-between;
}

/* 좌측 박스 (h1 태그로 감싼 로고 이미지) */
.logo{
    display: block;
    height: 90px;
    cursor: pointer;
    text-decoration: none;
    border: 0;
}

.logo > #img1 {
    margin-top: 15px;
}
.search input:-ms-input-placeholder {color:#a8a8a8;}
.search input::-webkit-input-placeholder {color:#a8a8a8;}
.search input:-moz-placeholder {color:#a8a8a8;}

/* 중앙 카테고리 박스 */
.menu{
    list-style: none;
    display: block;
}

/* 중앙 카테고리 (ul박스) */
.depth{
    width: 540px;
    display: -webkit-box;
    -webkit-box-pack: justify;
    justify-content: space-between;
    list-style: none;
}

/* 중앙 카테고리 박스 (폰트 스타일) */
.menu_a{
    font-weight: 700;
    color: #191919;
    text-align: center;
    width: 100%;
    height: 90px;
    line-height: 120px;
    font-size: 20px;
    position:relative;
}

/* 우측 박스 */
.language-wrap{
    position: relative;
    z-index: 3;
    width: 222px;
    height: 90px;
    display: -webkit-box;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    font-size: 20px;
}

/* 우측 박스 (한국어)*/
#lang{
    position: relative;
    background: url(login.JPG) no-repeat 0 50%;
    text-align: left;
    height: 90px;
    width: 65px;
    font-size: 16px;
    padding-left: 20px;
    margin-left: 20px;
    font-size: 20px;
}

/* 우측 박스 (동그라미 버튼) */
.btn {
    width: 47px;
    height: 47px;
    border-radius: 50%;
    background: url(login.JPG) no-repeat 50%/20px auto;
}
/* ======================= 헤더 ======================= */


/* 헤더를 재외한 웹페이지 width:1280px 고정. */
.wrap {
    width:100%;
}

.wrap2 {
    width:1280px;
    margin: 0 auto;
}

/* 상단의 이미지 */
.intro_bg {
    width: 100%;
    height: 800px;
    background-image:"img/2.jpg";
    background-repeat: no-repeat;
    background-size: cover;
}
.myslides {
    position : absolute;
    width:100%
}
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlidesDisplay2 {display: none}
.mySlidesDisplay3 {display: none}
slideshow-container .mySlidefirst:first-child {display: none }
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 2855px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.imgtext {
  color: #f2f2f2;
  font-size: 84px;
  padding: 8px 12px;
  position: absolute;
  top: 500px;
  left: 100px;
  font-family: Nanum Gothic;
}

.imgtext2 {
    color: #f2f2f2;
    font-size: 48px;
    padding: 8px 12px;
    position: absolute;
    top: 600px;
    left: 100px;
    font-family: Nanum Gothic;
  }

  .dotDiv {
    color: #f2f2f2;
    font-size: 48px;
    padding: 8px 12px;
    position:relative;
    top: 200px;
    left:0px;
    font-family: Nanum Gothic;
  }

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

/* 상단 이미지 안의 문자. 필요시 위치 수정. */
.intro_text {
    padding-top: 400px;
    padding-left: 30px;
}



.remocon{
    position:fixed;
    right:0%;
    top:100px;
    width:200px;
    height:100%;
    bottom:0px;
    border:1px solid; 
    background-color:hwb(39 87% 0%);
    border-color:hsl(39, 100%, 54%);

    text-align: center;
    
}
.remocon button{ 
    width:190px;
    height:40px;
    border-color:rgb(207, 152, 0); 
    background-color:hsl(39, 100%, 54%);
}

.remocon button :hover{ 
    border-color:rgb(0, 124, 240);
    background-color:rgb(0, 124, 240);
}
.remocon h2{ 
    color:white;
}
.remoconHead{
    border-bottom:1px solid; 
    border-color:hsl(39, 100%, 54%);

    width:100%;
    height:100px;
    background-color:hsl(39, 100%, 54%);
}
/* 태그 */
.month {
    display: flex;
    margin-top: 30px;
    justify-content: center;
    padding-bottom: 30px;
}
/* 각 태그별 간격 */
.month > li {
    margin-left: 20px;
}
/* ======================= 상단 ========================= */

/* ======================= 하단 ========================= */
.taglist{
    display:flex;
    justify-content: center; 
}
.tagsin{
    width:100%; 
    height:100px; 
    padding-right:0px
}
.taglist li{
    
    padding:10px;
    list-style-type: none;
    margin-right:3px;
    border-radius: 100%;
    border:solid 1px;
    float:left;
}

.taglist input{
    width:30px;
    height:20px;
}

.best{
    height:90px;
    background-color:rgb(70, 165, 255);
    border:1px solid; 
    border-color:rgb(51, 121, 185); 
}
.best h2{
    color:white;
}
.best img{
    margin-left:500px;
    height:80px; 
    float:left;

}

.mainRecommend{
    border:1px solid; 
    border-color:rgb(51, 121, 185); 
    height:235px;
}

.recommend1{
    border-radius:20%; 
    margin:25px; 
    width:250px; 
    height:190px; 
    float:left; 
    border-bottom:1px solid; 
    border-color:rgb(51, 121, 185);
}

.recommend2,.recommend3,.recommend4{
    border-radius:20%; 
    margin:25px; 
    width:250px; 
    height:190px; 
    float:left; 
    margin-left:50px; 
    border-bottom:1px solid; 
    border-color:rgb(51, 121, 185);
}

.mainRecommend div a div{
    text-align: center;
}

.mainRecommend div a div img{
    border-radius:20%; 
    width:250px; 
    height:150px;
}

.mainContainer{
    clear:left; 
    border-top:1px dashed;
}

.mainContainerin1{
    margin:50px; 
    width:40%; 
    height:500px; 
    float:left;
}

.mainContainerin1_1{
    width:100%; height:300px;
}

.mainContainerin1_1 img{
    height:300px; 
    width:100%; 
    border-radius:20%;
}
.mainContainerin1_2{
    width:100%; 
    height:50px; 
    text-align:center;
}
.mainContainerin1_3{
    width:100%; 
    height:100px;
}
.mainContainerin2{
    margin:50px; 
    width:40%; 
    height:500px; 
    float:left;
}
.mainContainerin2_1{
    width:45%; 
    height:50px; 
    float:left; 
    text-align:center;
}
.mainContainerin2_2{
    width:45%; 
    height:50px; 
    float:left; 
    margin-left:30px; 
    text-align:center;
}
.mainContainerin2_3{
    width:45%; 
    height:50px; 
    float:left; 
    margin-top:200px; 
    text-align:center;
}
.mainContainerin2_4{
    width:45%; 
    height:50px; 
    float:left; 
    margin-left:30px; 
    margin-top:200px; 
    text-align:center;
}
.mainContainerin2 div img{
    height:200px; 
    width:100%; 
    border-radius:20%;
}
.mainContainer3{
    clear:left; 
    border-top:1px 
    dashed;
}

.mainContainerin3{
    margin:10px; 
    width:30%; 
    float:left;
}

.mainContainerin3 a div{
    margin:30px; 
    width:100%;
    height:450px;
    text-align:center;
}

.mainContainerin3 a div img{
    height:300px; 
    width:100%; 
    border-radius:20%;
}

.bottom{
    margin-top:1200px; 
    width:100%; 
    height:150px;
    text-align:center;
}

#footer {
    width: 100%;
    height: 200px;
    bottom: 0px;
    /*position: absolute;*/
    background-color: #3c3c3c;
    text-align: center;
    display: flex;
    justify-content: center;
    align-items: center;
    
}
.footer_wrap h2{
    text-align: center;
    color: white;
    margin-bottom: 30px;
}

.footer_wrap p{
    text-align: center;
    color: white;
}

<form:from action="${pageContext.request.contextPath }/Logout" method="POST">
	<input type="submit" value="로그아웃" />
</form:from>
</style>
</head>
<body>
<!-- ============== 헤더 =============== -->
<div id="header">
    <div id="container">
        <h1 class="logo">
            <img id="img1" src="${path}/resources/img/jeju.png" style="height:80px;">
        </h1>
        <nav class="menu">
            <ul class="depth">
                <li><a class="menu_a" href="jeju.html">숙박</a></li>
                <li><a class="menu_a" href="festival.html">축제</a></li>
                <li><a class="menu_a" href="">쇼핑</a></li>
                <li><a class="menu_a" href="">관광지</a></li>
                <li><a class="menu_a" href="page1.html">음식</a></li>
                <li><a class="menu_a" href="일정공유.html">일정 공유</a></li>
            </ul>
        </nav>
        <div class="language-wrap">
            <a href="#" id="login">로그인</a>
            <a id="lang">한국어</a>
            <button type="button" class="btn"></button>
        </div>
    </div>
</div>

<!-- ============== 헤더 =============== -->

    <!-- ============== 이미지 =============== -->
    <!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->
        
    <!-- ↓↓start class wrap -->
    <div class="wrap"> 
        <div class="intro_bg">
            <div class="slideshow-container" style="width:100%; height:500px;">

                <div class="mySlides fade mySlidesDisplay1">
                  <img src="${path}/resources/img/1.jpg" style="width:100%; height:800px;">
                  <div class="imgtext">제주도의 자연경관</div>
                  <div class="imgtext2">천지연 폭포</div>
                </div>
                
                <div class="mySlides fade mySlidesDisplay2">
                  <div class="imgtext">제주도의 자연경관</div>
                  <div class="imgtext2">성산 일출봉</div>
                  <img src="${path}/resources/img/2.jpg" style="width:100%; height:800px;">
                </div>
                
                <div class="mySlides fade mySlidesDisplay3">
                  <div class="imgtext">제주도의 자연경관</div>
                  <div class="imgtext2">제주 올레</div>
                  <img src="${path}/resources/img/3.jpg" style="width:100%; height:800px;">
                </div>
                
                <a class="prev" onclick="plusSlides(-1)" style="top:450px;">❮</a>
                <a class="next" onclick="plusSlides(1)" style="top:450px;">❯</a>
                
                </div>
                <div class="dotDiv" style="text-align:center;">
                    <span class="dot" onclick="currentSlide(1)"></span> 
                    <span class="dot" onclick="currentSlide(2)"></span> 
                    <span class="dot" onclick="currentSlide(3)"></span> 
                </div>
            <div class="intro_text">
            </div>  
        </div>
    </div><br>
    <div class="remocon" id="remocon">
        <div class="remoconHead">
            <h2><br>관리자 리모콘</h2>
        </div>
        <br><button class="bestBT"><h2>금주의 베스트</h2></button>
        <br><button class="foodBestBT"><h2>음식 베스트</h2></button>
        <br><button class="foodBT"><h2>음식</h2></button>
        <br><button class="merchBT"><h2>상품</h2></button>
    </div>
    <div class="wrap2">
        <div class="best">
            <img src="${path}/resources/img/ariplain.jpg"><h2><br>금주의 베스트</h2>
        </div>
        <div class="mainRecommend">
            <div class="recommend1">
                <a href="../festival/detail/휴애리 봄 수국축제.html">
                    <div class="recommend1_1"><img src="${list[0].imgLink }"></div>
                    <div class="recommend1_2"><h3>${list[0].name }</h3></div>
                </a>
            </div>
            <div class="recommend2">
                <a href="../festival/detail/마노르블랑 수국축제.html">
                    <div class="recommend2_1"><img src="${list[1].imgLink }"></div>
                    <div class="recommend2_2"><h3>${list[1].name }</h3></div>
                </a>
            </div>
            <div class="recommend3">
                <a href="../festival/detail/제주국제관악제제.html">
                    <div class="recommend3_1"><img src="${list[2].imgLink }"></div>
                    <div class="recommend3_2"><h3>${list[2].name }</h3></div>
                </a>
            </div>
            <div class="recommend4">
                <a href="../festival/detail/제주 문화유산 체험프로그램.html">
                    <div class="recommend4_1"><img src="${list[3].imgLink }"></div>
                    <div class="recommend4_2"><h3>${list[3].name }</h3></div>
                </a>
            </div>
        </div><br><br><br><br><br><br><br><br><br>
        <div class="mainContainer">
            <h1>이런 먹거리가 있어요</h1>    
        </div>
                <!-- ============== 하단 =============== -->
                <div class="mainContainerin1">
                    <a href="#">
                        <div class="mainContainerin1_1">
                            <img src="${listFoodBest[0].imgLink}">
                        </div>
                        <div class="mainContainerin1_2">
                            <h2><br>${listFoodBest[0].name}</h2>
                        </div>
                        <div class="mainContainerin1_3">                        
                            <h3>${listFoodBest[0].content}</h3>
                            <ul class="taglist">
                                <li><a href="#">${listFoodBest[0].tag}</a></li>
                            </ul>
                        </div>
                    </a>   
                </div>
    
                <div class="mainContainerin2">
                    <a href="#">
                        <div class="mainContainerin2_1">
                            <img src="${listFood[0].imgLink}">
                            <h2>${listFood[0].name}</h2>
                        </div>
                    </a>
                    <a href="#">
                        <div class="mainContainerin2_2">
                            <img src="${listFood[1].imgLink}">
                            <h2>${listFood[1].name}</h2>
                        </div>
                    </a>
                    <a href="#">
                        <div class="mainContainerin2_3">
                            <img src="${listFood[2].imgLink}">
                            <h2>${listFood[2].name}</h2>
                        </div>
                    </a>
                    <a href="#">
                        <div class="mainContainerin2_4">
                            <img src="${listFood[3].imgLink}">
                            <h2>${listFood[3].name}</h2>
                        </div>
                    </a>
                </div>
                <div class="mainContainer3">
                    <h1>이런 상품이 있어요</h1>    
                </div>
                <div class="mainContainerin3">
                        <a href="#">
                            <div>
                                <img src="${listMerch[0].imgLink}">
                                <h2><br>${listMerch[0].name}</h2>
                                <h3><br>$${listMerch[0].price}</h3>
                                <h3><br>${listMerch[0].content}</h3>
                            </div>
                        </a>
                </div>
                <div class="mainContainerin3">
                    <a href="#">
                        <div>
                            <img src="${listMerch[1].imgLink}">
                            <h2><br>${listMerch[1].name}</h2>
                            <h3><br>$${listMerch[1].price}</h3>
                            <h3><br>${listMerch[1].content}</h3>
                        </div>
                    </a>
                </div>
                <div class="mainContainerin3">
                    <a href="#">
                        <div>
                            <img src="${listMerch[2].imgLink}">
                            <h2><br>${listMerch[2].name}</h2>
                            <h3><br>$${listMerch[2].price}</h3>
                            <h3><br>${listMerch[2].content}</h3>
                        </div>
                    </a>
                </div>
                <div class="mainContainerin3">
                    <a href="#">
                        <div>
                            <img src="${listMerch[3].imgLink}">
                            <h2><br>${listMerch[3].name}</h2>
                            <h3><br>$${listMerch[3].price}</h3>
                            <h3><br>${listMerch[3].content}</h3>
                        </div>
                    </a>
                </div>
                <div class="mainContainerin3">
                    <a href="#">
                        <div>
                            <img src="${listMerch[4].imgLink}">
                            <h2><br>${listMerch[4].name}</h2>
                            <h3><br>$${listMerch[4].price}</h3>
                            <h3><br>${listMerch[4].content}</h3>
                        </div>
                    </a>
                </div>
                <div class="mainContainerin3">
                    <a href="#">
                        <div>
                            <img src="${listMerch[5].imgLink}">
                            <h2><br>${listMerch[5].name}</h2>
                            <h3><br>$${listMerch[5].price}</h3>
                            <h3><br>${listMerch[5].content}</h3>
                        </div>
                    </a>
                </div>
                <!-- =============== 하단 ============== -->
        </div> 
    </div>
    
    <div class="bottom">
        <br><br>
        <footer id="footer">
            <div class="footer_wrap">
                <div class="footer_title">
                    <h2>제주도 소개 사이트</h2>
                </div>
                <div class="footer_intro">
                    <p>대표 : xx</p>
                    <p>연락처 : xx</p>
                </div>
            </div>
        </footer>
    
    </div>
</body>
</html>