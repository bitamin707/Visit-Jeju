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

var id = "<%= request.getParameter("id") %>";
var pw = "<%= request.getParameter("pw") %>";

if(id != "admin" || pw != "1234"){
	location.href="/ex/main/mainNormal";
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
	
	document.getElementsByClassName("accountBT")[0]
	.addEventListener("click",function(){
		location.href="/ex/main/accountList";
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


.search input:-ms-input-placeholder {color:#a8a8a8;}
.search input::-webkit-input-placeholder {color:#a8a8a8;}
.search input:-moz-placeholder {color:#a8a8a8;}


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
	border_bottom:1px solid;
    border-color:rgb(207, 152, 0); 
    background-color:hsl(39, 100%, 54%);
    z-index: 3;

    text-align: center;
    
}
.bestBT{
	margin-top:1px;
}


.remocon button{ 
    width:200px;
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
    border-color:rgb(207, 152, 0); 
    background-color:hsl(39, 100%, 54%);

    width:100%;
    height:100px;
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
    box-shadow:2px 2px 8px 0px #000;
    border-bottom:1px solid; 
    border-color:rgb(51, 121, 185);
}

.recommend2,.recommend3,.recommend4{
    box-shadow:2px 2px 8px 0px #000;
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
    overflow:hidden;
    border-radius:20%;
}

.mainRecommend div a div img{
    border-radius:20%; 
    width:250px; 
    height:150px;
    transition: all 0.2s linear;
}

.mainRecommend div a div img:hover{
    transform: scale(1.4);
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
    overflow:hidden;
    border-radius:20%;
    
}
.bestLogo{
    position:absolute;
    width:200px;
    z-index: 3;
}
.mainContainerin1_1 img{
    
    height:300px; 
    width:100%; 
    border-radius:20%;
    transition: all 0.2s linear;
}

.mainContainerin1_1 img:hover{
    transform: scale(1.4);
    
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



/* ======================= 이런 먹거리가 있어요 ========================= */
.mainContainerin2{
    max-width:1200px; 
    width:50%; 
    height:600px;
    margin:0 auto; 
    float:left;
}
.mainContainerin2 div{
    max-width:270px;
    width:100%;
    vertical-align:top;
    margin:0 auto;
    display:inline-block;
    box-shadow:2px 2px 8px 0px #000;
}
.in2_a1 {
    display:block;
    width:auto;
    text-decoration: none;
    margin:10px;
    text-align: center;
}
.in2_a1 .screen {
    position:relative;
    overflow:hidden;
    width:250px;
    height:220px;
}
.in2_a1 .screen .top {
    position:absolute;
    bottom:150%;
    z-index:2;
    color:#fff;
    font-size:24px;
    font-weight:900;
    transition:all .35s;
}
.in2_a1 .screen .bottom {
    position:absolute;
    top:150%;
    z-index:2;
    color:#fff;
    font-size:20px;
    font-weight:900;
    transition:all .35s;
}
.in2_a1 .screen img{
    width:100%;
    height:100%;
}

.in2_a1:hover .top {
    bottom:60%;
}
.in2_a1:hover .bottom {
    top:60%;
}

.in2_a1 .screen::after{
    content:'';
    display:block;
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,.5);
    z-index:1;
    opacity:0;
    transition:all .3s5;
}

.in2_a1:hover .screen::after{
    opacity:1;
}


/* ======================= 이런 상품이 있어요 ========================= */

.mainContainer3{
    clear:left; 
    border-top:1px dashed;
    margin:0 auto; 
    
}

.mainContainerin3{
    max-width:1200px; 
    width:100%; 
    height:1000px;
    margin:0 auto; 
    float:left;
}

.mainContainerin3 div{
    max-width:380px;
    width:100%;
    vertical-align:top;
    margin:0 auto;
    display:inline-block;
}

.in3_a {
    display:block;
    width:auto;
    text-decoration: none;
}
.in3_a .screen {
    position:relative;
    overflow:hidden;
    width:100%;
    height:100%;
    text-align: center;
    margin:30px;
    
}
.in3_a .screen .top {
    position:absolute;
    bottom:150%;
    z-index:2;
    color:#fff;
    font-size:24px;
    font-weight:900;
    transition:all .35s;
}
.in3_a .screen .bottom {
    position:absolute;
    top:150%;
    left:15px;
    z-index:2;
    color:#fff;
    font-size:20px;
    font-weight:900;
    transition:all .35s;
}
.in3_a .screen img{
    width:100%;
    height:350px;
    border-radius:20%;
}

.in3_a:hover .top {
    bottom:60%;
}
.in3_a:hover .bottom {
    top:60%;
}

.in3_a .screen::after{
    content:'';
    display:block;
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,.5);
    z-index:1;
    opacity:0;
    transition:all .3s5;
    border-radius:20%;
}

.in3_a:hover .screen::after{
    opacity:1;
}

.bottom2{
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
</style>
</head>
<body>


<%@include file="../header.jsp" %>
    <!-- ============== 헤더 =============== -->

    <!-- ============== 이미지 =============== -->
    <!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->

    <!-- ↓↓start class wrap -->
    <div class="wrap">
        <section>
            <div class="intro_bg">
                <div class="slideshow-container" style="width:100%; height:500px;">

                    <div class="mySlides fade mySlidesDisplay1">
                        <img src="/ex/resources/img/main/1.jpg" style="width:100%; height:800px;">
                        <div class="imgtext">제주도의 자연경관</div>
                        <div class="imgtext2">천지연 폭포</div>
                    </div>

                    <div class="mySlides fade mySlidesDisplay2">
                        <div class="imgtext">제주도의 자연경관</div>
                        <div class="imgtext2">성산 일출봉</div>
                        <img src="/ex/resources/img/main/2.jpg" style="width:100%; height:800px;">
                    </div>

                    <div class="mySlides fade mySlidesDisplay3">
                        <div class="imgtext">제주도의 자연경관</div>
                        <div class="imgtext2">제주 올레</div>
                        <img src="/ex/resources/img/main/3.jpg" style="width:100%; height:800px;">
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
        <button class="bestBT">
            <h2>금주의 베스트</h2>
        </button>
        <br><button class="foodBestBT">
            <h2>음식 베스트</h2>
        </button>
        <br><button class="foodBT">
            <h2>음식</h2>
        </button>
        <br><button class="merchBT">
            <h2>관광지</h2>
        </button>
        <br><button class="accountBT">
            <h2>계정관리</h2>
        </button>
    </div>
    <div class="wrap2">
        <div class="best">
            <img src="${path}/resources/img/main/ariplain.jpg">
            <h2><br>금주의 베스트</h2>
        </div>
        <div class="mainRecommend">
            <div class="recommend1">
                <a href="../festival/detail/휴애리 봄 수국축제.html">
                    <div class="recommend1_1"><img
                            src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/202105/17/5ffe6841-1401-4282-9d40-2cf9d5447f2a.jpg">
                    </div>
                    <div class="recommend1_2">
                        <h3>휴애리 봄 수국축제</h3>
                    </div>
                </a>
            </div>
            <div class="recommend2">
                <a href="../festival/detail/마노르블랑 수국축제.html">
                    <div class="recommend2_1"><img
                            src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/202204/18/e86e6d5d-de1c-4436-95ab-7d2732cedcc4.jpg">
                    </div>
                    <div class="recommend2_2">
                        <h3>마노르블랑 수국축제</h3>
                    </div>
                </a>
            </div>
            <div class="recommend3">
                <a href="../festival/detail/제주국제관악제제.html">
                    <div class="recommend3_1"><img
                            src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/202205/26/fecde995-8c79-4ed3-88b2-e8eb9b9517ab.jpg">
                    </div>
                    <div class="recommend3_2">
                        <h3>제주국제관악제제</h3>
                    </div>
                </a>
            </div>
            <div class="recommend4">
                <a href="../festival/detail/제주 문화유산 체험프로그램.html">
                    <div class="recommend4_1"><img
                            src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/202205/03/c63c24f5-c17c-4909-b960-c3f5d9d2dc64.jpg">
                    </div>
                    <div class="recommend4_2">
                        <h3>제주문화유산 프로그램</h3>
                    </div>
                </a>
            </div>
        </div><br><br><br><br><br><br><br><br><br>
        <div class="mainContainer">
            <h1>이런 먹거리가 있어요</h1>
            <img src="${path}/resources/img/main/best.png" class="bestLogo">
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
                    <div class="gallerylist1">
                        <a href="#" class="in2_a1">
                            <div class="screen">
                                <div class="top">${listFood[0].name}</div>
                                <img src="${listFood[0].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist2">
                        <a href="#" class="in2_a1">
                            <div class="screen">
                                <div class="top">${listFood[1].name}</div>
                                <div class="bottom"></div>
                                <img src="${listFood[1].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist3">
                        <a href="#" class="in2_a1">
                            <div class="screen">
                                <div class="top">${listFood[2].name}</div>
                                <div class="bottom"></div>
                                <img src="${listFood[2].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist4">
                        <a href="#" class="in2_a1">
                            <div class="screen">
                                <div class="top">${listFood[3].name}</div>
                                <div class="bottom"></div>
                                <img src="${listFood[3].imgLink}">
                            </div>
                        </a>
                    </div>
                </div>
                <div class="mainContainer3">
                    <h1>이런 관광지가 있어요</h1>    
                </div>
                <div class="mainContainerin3">
                    <div class="gallerylist5">
                        <a href="../tour/data2.html" class="in3_a">
                            <div class="screen">
                                <div class="top">${listMerch[0].name}</div> 
                                <img src="${listMerch[0].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist6">
                        <a href="#" class="in3_a">
                            <div class="screen">
                                <div class="top">${listMerch[1].name}</div>
                                <img src="${listMerch[1].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist7">
                        <a href="#" class="in3_a">
                            <div class="screen">
                                <div class="top">${listMerch[2].name}</div>
                                <img src="${listMerch[2].imgLink}">
                            </div>
                        </a>
                    </div>
                    
                    <div class="gallerylist8">
                        <a href="#" class="in3_a">
                            <div class="screen">
                                <div class="top">${listMerch[3].name}</div>
                                <img src="${listMerch[3].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist9">
                        <a href="#" class="in3_a">
                            <div class="screen">
                                <div class="top">${listMerch[4].name}</div>
                                <img src="${listMerch[4].imgLink}">
                            </div>
                        </a>
                    </div>
                    <div class="gallerylist10">
                        <a href="#" class="in3_a">
                            <div class="screen">
                                <div class="top">${listMerch[5].name}</div>
                                <img src="${listMerch[5].imgLink}">
                            </div>
                        </a>
                    </div>
                </div>
                <!-- =============== 하단 ============== -->
        </div> 
    </div>
    <%@include file="../footer.jsp" %>
</body>

</html>