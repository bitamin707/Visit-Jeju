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
            <img src="/ex/resources/img/tour/천지연폭포.jpg" alt="천지연폭포">
          </div>

          <div class="travel-dimmed">
            <h3>천지연폭포</h3>
            <p><span class="place"></span>제주특별자치도 서귀포시 남성중로 2-15</p>
            <span class="travel-info">
              <p>하늘과 땅이 만나 이루어진 연못이라는 의미를 담고 있는데, 폭포의 길이 22m, 그 아래 못의 깊이가 20m로, 가히 하늘과 땅이 만나는 연못이라 불린다.</p>
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
            <img src="/ex/resources/img/tour/월정리해변.jpg" alt="월정리해변">
          </div>
          <div class="travel-dimmed">
            <h3>월정리해변</h3>
            <p><span class="place"></span>제주특별자치도 제주시 구좌읍 월정리 33-3 </p>
            <span class="travel-info">
              <p>  제주도의 동쪽에 위치하고 있는 마을인 '월정리'는 '달이 머문다'는 뜻의 이름을 가진 서정적인 풍경의 마을이다. 아름다운 에메랄드 빛 바다가 한 폭의 그림처럼 펼쳐져 있다. </p>
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
            <img src="/ex/resources/img/tour/museum1.jpg" alt="건강과성박물관">
          </div>

          <div class="travel-dimmed">
            <h3>건강과성박물관</h3>
            <p><span class="place"></span>서귀포시 안덕면 일주서로 1611 </p>
            <span class="travel-info">
              <p>7000㎡ 크기의 실내 전시공간과 야외 조각공원이 합쳐진, 성을 테마로 한 공간으로는 명실상부 세계 최대의 성박물관이다. </p>
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
            <img src="/ex/resources/img/tour/제주4.3평화공원.jpg" alt="제주4.3평화공원">
          </div>

          <div class="travel-dimmed">
            <h3>제주4.3평화공원</h3>
            <p><span class="place"></span>제주특별자치도 제주시 명림로 430 </p>
            <span class="travel-info">
              <p> 제주시 봉개동에 위치한 제주 4.3 평화공원은 4.3 사건 당시의 희생자들을 기리기 위한 공간이다.</p>
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
            <img src="/ex/resources/img/tour/제주항공우주박물관.jpg" alt="제주항공우주박물관">
          </div>

          <div class="travel-dimmed">
            <h3>제주항공우주박물관</h3>
            <p><span class="place"></span>서귀포시 안덕면 녹차분재로 218 </p>
            <span class="travel-info">
              <p>제1층에는 항공역사관, 2층은 천문우주관이다 </p>
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
            <img src="/ex/resources/img/tour/제주돌마을공원.jpg" alt="제주돌마을공원">
          </div>

          <div class="travel-dimmed">
            <h3>제주돌마을공원</h3>
            <p><span class="place"></span>제주특별자치도 제주시 한림읍 금능남로 421 </p>
            <span class="travel-info">
              <p>제주돌마을공원은 제주의 자연석, 휘기석, 화산석들을 수집하여 실.내외 전시장에서 다양한 돌들을 만날 수 있는 곳이다. </p>
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
            <img src="/ex/resources/img/tour/피규어뮤지공원.jpg" alt="피규어뮤지엄제주">
          </div>

          <div class="travel-dimmed">
            <h3>피규어뮤지엄제주</h3>
            <p><span class="place"></span>제주특별자치도 서귀포시 안덕면 한창로 243 </p>
            <span class="travel-info">
              <p>서귀포시 안덕면에 자리한 피규어뮤지엄은 국내외 유명한 캐릭터의 피규어를 한자리에서 볼수 있는 국내 최댁 규모의 피규어 박물관이다. </p>
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
            <img src="/ex/resources/img/tour/거문오름.jpg" alt="거문오름">
          </div>

          <div class="travel-dimmed">
            <h3>거문오름</h3>
            <p><span class="place"></span>제주시 조천읍 선교로 569-36 </p>
            <span class="travel-info">
              <p>거문오름은 해발 456m(둘레 4,551m)의 오름으로 거문오름 용암동굴계를 형성한 모체로 알려져 있다. 숲이 우거져 검게 보여 검은 오름이라 하였다고 전해진다. </p>
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
            <img src="/ex/resources/img/tour/한담해변.jpg" alt="한담해변">
          </div>

          <div class="travel-dimmed">
            <h3>한담해변</h3>
            <p><span class="place"></span>제주시 애월읍 애월로1길 26-4 </p>
            <span class="travel-info">
              <p>  제주 북서부에 위치한 애월에서 곽지까지 해안을 따라 이어지는 산책로다.</p>
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