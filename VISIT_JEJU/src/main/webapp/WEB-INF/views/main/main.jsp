<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/ex/resources/css/main/mainStyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap" rel="stylesheet">
<title>메인 화면</title>
<script>
var result='${msg}';
if(result=='success'){
	alert('처리가 완료되었습니다.');
}

var loginCheck = "<%= request.getParameter("userid") %>";

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
	
	document.getElementsByClassName("TestBT")[0]
	.addEventListener("click",function(){
		location.href="/ex/main/testPage";
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
        <br><button class="TestBT">
            <h2>구입테스트</h2>
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
    
<script type="text/javascript">
var check = "${Check}"
	if(check == "관리자"){
		document.getElementById("remocon").style.display = "block";	
	}else {
		document.getElementById("remocon").style.display = "none";	
	}
</script>

    
</body>

</html>