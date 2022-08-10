<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>관광지</title>
  <link rel="stylesheet" href="/ex/resources/css/tour/utils/reset.css">
  <link rel="stylesheet" href="/ex/resources/css/tour/style.css?after">
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
          <li>전체</li>
          <li>예술및문화문화</li>
          <li>역사</li>
          <li>해변</li>
          <li>마을관광</li>
          <li>유네스코</li>
        </ul>
  </section>
        
    <!-- =============== 태그 ============== -->


    
  <!-- main -->
  <main>


    <!-- travel section -->
    <div class="container travel">
      <div class="travel-cards">

        <div class="travel-card">

          <div class="travel-img" data-filter="마을관광">
            <img src="/ex/resources/img/tour/seongeup1.jpg" alt="성읍녹차마을">
          </div>
                     

          <div class="travel-dimmed">
            <h3>성읍녹차마을</h3>
            <p><span class="place"></span>제주특별자치도 표선면 중산간동로 4778</p>
            <span class="travel-info">
              <p>성읍녹차마을은 녹차를 키워 생산해내는 다원이다. 유기물 함량이 높고 물 빠짐이 좋은 화산회토와 깨끗한 화산 암반수를 지닌 천혜의 자연 조건 제주에서 키워 만들어낸 녹차를 생산한다</p>
              <button>
                <a href="data2">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card">
          <div class="travel-img" data-filter="예술및문화">
            <img src="/ex/resources/img/tour/museum2.jpg" alt="오설록 티 뮤지엄">
          </div>
          <div class="travel-dimmed">
            <h3>오설록 티 뮤지엄</h3>
            <p><span class="place"></span>서귀포시 안덕면 신화역사로 15 </p>
            <span class="travel-info">
              <p>국내외 차 관련 물품과 박물관이며, 푸른 녹차밭이 펼쳐지는 제주도 서광다원 입구에 위치하고 있다.  </p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card" data-filter="예술및문화">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/국립제주박물관1.jpg" alt="국립제주박물관">
          </div>

          <div class="travel-dimmed">
            <h3>국립제주박물관</h3>
            <p><span class="place"></span>제주특별자치도 제주시 일주동로 17 </p>
            <span class="travel-info">
              <p>제주의 역사와 문화유산을 체계적으로 전시·보존·연구하는 고고·역사박물관이다. 동북아시아지역 문화교류의 주요 거점인 제주도의 독특한 역사와 문화를 압축해서 만나볼 수 있다. </p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>


        <div class="travel-card" data-filter="해변">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/함덕해수욕장2.jpg" alt="함덕해수욕장">
          </div>

          <div class="travel-dimmed">
            <h3>함덕해수욕장</h3>
            <p><span class="place"></span> 제주시 조천읍 조함해안로 519-10 </p>
            <span class="travel-info">
              <p>제주올레 19코스를 걷다 보면 에메랄드빛 보석을 품고 있는 함덕해수욕장을 만날 수 있다. 해수욕장 바로 옆에 우뚝선 오름(서우봉) 덕분에 ‘함덕서우봉해변’이라고도 불린다.</p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>


        <div class="travel-card" data-filter="마을관광">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/동백마을2.jpg" alt="동백마을" >
          </div>

          <div class="travel-dimmed">
            <h3>동백마을</h3>
            <p><span class="place"></span>서귀포시 남원읍 한신로531번길 22-1 </p>
            <span class="travel-info">
              <p>제주 토종 동백나무에서 얻어진 동백을 이용한 동백비누 만들기와 주민들이 재래식으로 압착해 짜낸 동백기름을 맛볼 수 있는 동백비빔밥 체험 프로그램을 운영하고 있다.  </p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card" data-filter="역사">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/제주해양동물박물관1.jpg" alt="제주해양동물박물관">
          </div>

          <div class="travel-dimmed">
            <h3>제주해양동물박물관</h3>
            <p><span class="place"></span> 서귀포시 성산읍 서성일로 689-21 </p>
            <span class="travel-info">
              <p>제주해양동물박물관에서는 다양한 해양 동물들의 재미있고 신비로운 이야기를 들을 수 있다.</p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card" data-filter="해변">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/우도1.jpg" alt="우도">
          </div>

          <div class="travel-dimmed">
            <h3>우도</h3>
            <p><span class="place"></span>제주시 우도면 삼양고수물길 1 </p>
            <span class="travel-info">
              <p>완만한 경사와 옥토, 풍부한 어장, 우도팔경 등 천혜의 자연조건을 갖춘 관광지로써 한해 약 200만 명의 관광객이 찾는 제주의 대표적인 부속섬이다.  </p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card" data-filter="역사">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/해녀박물관1.jpg" alt="해녀박물관">
          </div>

          <div class="travel-dimmed">
            <h3>해녀박물관</h3>
            <p><span class="place"></span>제주시 구좌읍 해녀박물관길 26 </p>
            <span class="travel-info">
              <p> 기원 전부터의 역사를 가진 제주의 해녀 문화를 중심으로 해양, 어촌, 민속, 어업 등에 관한 자료를 전시하고 있다. </p>
              <button>
                <a href="#">
                  자세히보기
                </a>
              </button>
            </span>
          </div>
        </div>

        <div class="travel-card" data-filter="유네스코">
          <div class="travel-img">
            <img src="/ex/resources/img/tour/성산일출봉.jpg" alt="성산일출봉">
          </div>

          <div class="travel-dimmed">
            <h3>성산일출봉</h3>
            <p><span class="place"></span>서귀포시 성산읍 일출로 284-12 </p>
            <span class="travel-info">
              <p>성산일출봉은 제주도의 다른 오름들과는 달리 마그마가 물속에서 분출하면서 만들어진 수성화산체다. </p>
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