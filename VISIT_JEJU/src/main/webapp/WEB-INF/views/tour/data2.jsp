<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>관광지</title>
	<link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
	<link rel="stylesheet" href="/ex/resources/css/tour/style2.css?after">
	<link rel="stylesheet" type="text/css" href="/ex/resources/css/style_footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
 </head>

<body>

	<!-- ============== 헤더 =============== -->
	      <%@include file="../header.jsp"%>
	<!-- ============== 헤더 =============== -->

    <!-- ============== 이미지 =============== -->
    <!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->
        
    <!-- ↓↓start class wrap -->
    <div class="wrap"> 
        <div class="intro_bg">
            <div class="intro_text">
                <h1>관광지</h1>
                <h4>제주도 관광지 소개</h4>
            </div>  
      </div>
    </div>
    <!-- ============== 이미지 =============== -->
    
    

  <div class="mother">
  
    <div class="container">
      <div class="mySlides">
        <div class="numbertext">1 / 6</div>
        <img src="/ex/resources/img/tour/seongeup1.jpg" style="width:100%">
      </div>
    
      <div class="mySlides">
        <div class="numbertext">2 / 6</div>
        <img src="/ex/resources/img/tour/seongeup2.jpg" style="width:100%">
      </div>
    
      <div class="mySlides">
        <div class="numbertext">3 / 6</div>
        <img src="/ex/resources/img/tour/seongeup3.jpg" style="width:100%">
      </div>
        
      <div class="mySlides">
        <div class="numbertext">4 / 6</div>
        <img src="/ex/resources/img/tour/seongeup4.jpg" style="width:100%">
      </div>
    
      <div class="mySlides">
        <div class="numbertext">5 / 6</div>
        <img src="/ex/resources/img/tour/seongeup5.jpg" style="width:100%">
      </div>
        
      <div class="mySlides">
        <div class="numbertext">6 / 6</div>
        <img src="/ex/resources/img/tour/seongeup6.jpg" style="width:100%">
      </div>
        

      <a class="prev" onclick="plusSlides(-1)">❮</a>
      <a class="next" onclick="plusSlides(1)">❯</a>
    

      <div class="row">
        <div class="column">
          <img class="demo cursor" src="/ex/resources/img/tour/seongeup1.jpg" style="width:80%" onclick="currentSlide(1)" alt="seongeup1">
        </div>
        <div class="column">
          <img class="demo cursor" src="/ex/resources/img/tour/seongeup2.jpg" style="width:80%" onclick="currentSlide(2)" alt="seongeup2">
        </div>
        <div class="column">
          <img class="demo cursor" src="/ex/resources/img/tour/seongeup3.jpg" style="width:80%" onclick="currentSlide(3)" alt="seongeup3">
        </div>
        <div class="column">
          <img class="demo cursor" src="/ex/resources/img/tour/seongeup4.jpg" style="width:80%" onclick="currentSlide(4)" alt="seongeup4">
        </div>
        <div class="column">
          <img class="demo cursor" src="/ex/resources/img/tour/seongeup5.jpg" style="width:80%" onclick="currentSlide(5)" alt="seongeup5">
        </div>    
        <div class="column">
          <img class="demo cursor" src="/ex/resources/img/tour/seongeup6.jpg" style="width:80%" onclick="currentSlide(6)" alt="seongeup6">
        </div>
      </div>
    </div>


    <div class="tour_main">
      <div class="tour_title">
        <div class="tour_name">
          <h1>
            성읍녹차마을
          </h1>
        </div>
        
        <div class="tour_heart">
        </div>

        <div class="tour_star">
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
        </div>

        <div class="tour_line">
          <hr width="1190px;" >
        </div>

        <div class="tour_adr">
          <ul class="address">
            <li class="adr_a">서귀포시 표선면 중산간동로 4778</li>
            <li class="adr_a">09:00~17:00</li>
            <li class="adr_a">(+82)064-787-2254</li>
          </ul>
        </div>
      </div>



      <div class="tour_exp">
        <div class="tour_expl">
          <h1>상세정보</h1>
            <p>성읍녹차마을은 녹차를 키워 생산해내는 다원이다. 유기물 함량이 높고 물 빠짐이 좋은 화산회토와 깨끗한 화산 암반수를 지닌 천혜의 자연 조건 제주에서 키워 만들어낸 녹차를 생산하고, 
              그 것을 이용한 떡, 아이스크림 등을 판매하는 카페도 같이 운영하고 있다. 카페에서는 족욕도 체험할 수 있고, 다원 안에 동굴도 있어서, 이모저모 구경할 거리와 즐길 거리가 있다. 성읍녹차마을에 들러 푸르른 녹차 밭도 구경하며 차 한 잔의 여유도 만끽해보자.</p>
            <br>
            <ul>
              	제주의 자연조건
              <li>우수한 토양조건: 물빠짐이 좋은 화산회토</li>
              <li>화산암반수: 청정제주의 맑은 물</li>
              <li>평균기온: 연 평균기온 섭시 15~16도(차 재배 최적온도 12~17)</li>
              <li>해풍: 시시사철 불어오는 신선하고 미네랄이 풍부한 바닷바람</li>
            </ul>
            <br>
            <span id="dots"></span>
            <span id="more"> 
            <p>"청정제주는 녹차재배의 최적지입니다" 유기물 함량이 높고 물빠짐이 좋은 화산회토와 깨끗한 화산 양반수를 지닌 천혜의 자연조건 속에서 건강하게 찻잎을 키워내고,
              체계적인 가공 시스템을 도입하여 품질이 우수한 찻잎을 선별, 가공하여 맛과 향이 뛰어나다. 
              특히 국립 농산물품질관리원의 안정성 검사로 고품질 녹차생산과 품질관리에 최선을 다하고 있다.</span></p>    
        </div>
        <button onclick="myFunction()" id="myBtn"></button>
      </div>


      <div class="tour_drc">
        <h2>LOCATION</h2>
        <div id="map">
          <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11205.870172761475!2d126.790254867024!3d33.38346139567755!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4075b6b9aec662f4!2z7ISx7J2N64W57LCo66eI7J2E7JiB64aN7KGw7ZWp67KV7J24!5e0!3m2!1sko!2skr!4v1655542366942!5m2!1sko!2skr" width="480" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
          </iframe>
        </div>
      </div>

      <div class="tour_rvw">
        <h2>RREVIEW</h2>
        
        <div class="rvw">
			<form action="/ex/tour/data2" method="POST">
				<div class="rvw_input">
					<div class="rvw_btn">
						<input type="submit" value="등록">
					</div>
					<div class="rvw_inesrt">
					 	<input type="hidden" name=t_writer value="닉네임"/>
						<input type="text" name=t_content placeholder="후기를 작성해주세요."/>
					</div>
				</div>
				
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				
	        </form>
	         
	         
	        
	        
	        	<div class="rvw_line">
		          <hr width="660px;" >
		        </div>
	        
	   		<c:forEach items="${list }" var="TourReviewsDto">
	   		
			<div class="rvw_list">
				<div class="rvw_info">
					<h3>${TourReviewsDto.t_writer }</h3>
					<p><fmt:formatDate pattern="yy.MM.dd" value="${TourReviewsDto.t_regdate }"/></p>
				</div>
				<div class="rvw_content">
					<p>${TourReviewsDto.t_content }</p>
				</div>
			</div>
			
			</c:forEach>
		
      </div>


      <div class="tour_tags">
        <h2>TAGS</h2>
        <ul>
          <li>마을관광</li>
          <li>밭</li>
          <li>사진</li>
          <li>풍경</li>
          <li>아이스크림</li>
          <li>족욕</li>
          <li>블ㄹ라블라</li>
          <li>블ㄹ라블라</li>
        </ul>
      </div>
      
      
      <div class="tour_word">
      	<h2>WORD</h2>
      	<img src="/ex/resources/img/tour/wordclud.png" style="width:80%">
      </div>
   


    </div>
    
  

  </div>
 </div>










    <script>
      let slideIndex = 1;
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
        let dots = document.getElementsByClassName("demo");
        let captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        captionText.innerHTML = dots[slideIndex-1].alt;
      }
    </script>


    

    <script>
      function myFunction() {
        var dots = document.getElementById("dots");
        var moreText = document.getElementById("more");
        var btnText = document.getElementById("myBtn");
      
        if (dots.style.display === "none") {
          dots.style.display = "inline";
          btnText.innerHTML = ""; 
          moreText.style.display = "none";
        } else {
          dots.style.display = "none";
          btnText.innerHTML = ""; 
          moreText.style.display = "inline";
        }
      }
    </script>
    
    
  
    
    
    
      <footer id="footer">
	    <div class="footer_wrap">
	        <div class="footer_title">
	            <div class="footer_box">
	                <img src="/ex/resources/img/jeju.png" style="margin-top: 30px;" >
	            </div>
	        </div>
	        <div id="v-line"></div>
	        <div class="footer_intro">
	            <div class="footer_box">
	                <table class="footer_table">
	                    <tr><th>메인</th><td>누구</td><th>숙박</th><td>누구</td></tr>
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