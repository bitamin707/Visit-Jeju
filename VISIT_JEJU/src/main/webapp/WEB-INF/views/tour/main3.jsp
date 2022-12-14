<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>관광지</title>
  <link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
  <link rel="stylesheet" href="/ex/resources/css/tour/style.css">
  <link rel="stylesheet" type="text/css" href="/ex/resources/css/style_footer.css">
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

    <!-- ============== 이미지 =============== -->

    <!-- ============= 태그 ================ -->

  <section>
      <ul>
        <li class="active">전체</li>
        <li>예술및문화문화</li>
        <li>역사</li>
        <li>해변</li>
        <li>마을관광</li>
        <li>유네스코</li>
      </ul>
    <!-- =============== 태그 ============== -->


    
  <!-- main -->
  <main>

    <!-- travel section -->
    <div class="container travel">
      <div class="travel-cards">

        <div class="travel-card">

          <div class="travel-img">
            <img src="/ex/resources/img/tour/제주교육박물관.jpg" alt="제주교육박물관">
          </div>

          <div class="travel-dimmed">
            <h3>제주교육박물관</h3>
            <p><span class="place"></span>제주특별자치도 제주시 오복 4길 25</p>
            <span class="travel-info">
              <p>제주교육의 태동에서부터 현대에 이르기까지의 변천과정에 대한 교육자료를 체계적으로 전시하여 누구나 제주교육의 역사를 알기 쉽게 배울 수 있도록 환경이 조성되어 있다.</p>
              <button>
                <a href="#">
                  	자세히보기
                </a>
              </button>
            </span>
          </div>

        </div>

        <div class="travel-card">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/본태박물관.jpg" alt="본태박물관">
          </div>
          <div class="travel-dimmed">
            <h3>본태박물관</h3>
            <p><span class="place"></span>서귀포시 안덕면 산록남로762번길 69 </p>
            <span class="travel-info">
              <p>  본태박물관은 전통과 현대의 공예품을 통해 인류 공동의 아름다움을 탐색함을 목적으로 하고 있다.</p>
              <button>
                <a href="#">
                  	자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/hyeopjae1.jpg" alt="협재해수욕장">
          </div>

          <div class="travel-dimmed">
            <h3>협재해수욕장</h3>
            <p><span class="place"></span>제주시 한림읍 한림로 329-10 </p>
            <span class="travel-info">
              <p>협재해수욕장은 경사가 완만해 수심이 얕고, 소나무 숲도 있어서 어린이가 있는 가족 단위 여행객의 휴가지로 좋다. </p>
              <button>
                <a href="#">
                 	 자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>


        <div class="travel-card">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/한라산국립공원.jpg" alt="한라산국립공원">
          </div>

          <div class="travel-dimmed">
            <h3>한라산국립공원</h3>
            <p><span class="place"></span>제주특별자치도 제주시 1100로 2070-61 </p>
            <span class="travel-info">
              <p>지리산, 북한의 금강산과 함께 한반도의 3대 영산에 속하는 한라산은 한반도의 최남단에 위치하고 있으며, 높이 해발 1,950m로 남한에서 가장 높다.</p>
              <button>
                <a href="#">
                  	자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>


        <div class="travel-card">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/제주조천스위스마을.jpg" alt="제주조천스위스마을">
          </div>

          <div class="travel-dimmed">
            <h3>제주조천스위스마을</h3>
            <p><span class="place"></span>제주특별자치도 제주시 조천읍 함와로 566-27 </p>
            <span class="travel-info">
              <p>  제주 조천에 있는 스위스마을은 '동행'이라는 주제로 일군, 자연 그대로를 나타내는 색이 있는 공간이자, 풍경이 있는 건축 단지다. </p>
              <button>
                <a href="#">
                  	자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>



      </div>

      <div class="paging">
        <a href="main1" id="page" >1</a>
        <a href="main2" id="page" >2</a>
        <a href="main3" id="page" >3</a>
      </div>

    </div>
</div>


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

    
  
  </main>
  </section>
</body>
</html>