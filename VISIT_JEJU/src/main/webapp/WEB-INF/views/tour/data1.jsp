<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


    <!-- Main -->
    <div class="data">
        <div class="inner">
            <h1>성읍녹차마을</h1>
            <div class="image-main">
                <img src="/ex/resources/img/tour/seongeup1.jpg" alt="성읍녹차마을">
            </div>
            <p>성읍녹차마을은 녹차를 키워 생산해내는 다원이다. 유기물 함량이 높고 물 빠짐이 좋은 화산회토와 깨끗한 화산 암반수를 지닌 천혜의 자연 조건 제주에서 키워 만들어낸 녹차를 생산하고, 그 것을 이용한 떡, 아이스크림 등을 판매하는 카페도 같이 운영하고 있다. 카페에서는 족욕도 체험할 수 있고, 다원 안에 동굴도 있어서, 이모저모 구경할 거리와 즐길 거리가 있다. 성읍녹차마을에 들러 푸르른 녹차 밭도 구경하며 차 한 잔의 여유도 만끽해보자.</p>
            <p>성읍녹차마을에 방문하면 유기물 함량이 높고 물빠짐이 좋은 화산회토와 깨끗한 화산 암반수를 지닌 천혜의 자연조건제주에서 키워 만들어낸 녹차를 이용한 떡, 아이스크림 등을 드실 수 있고 푸르른 녹차밭도 구경할 수 있다.</p>
        </div>
        
        <div id="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11205.870172761475!2d126.790254867024!3d33.38346139567755!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4075b6b9aec662f4!2z7ISx7J2N64W57LCo66eI7J2E7JiB64aN7KGw7ZWp67KV7J24!5e0!3m2!1sko!2skr!4v1655542366942!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
            </iframe>
            <img src="/ex/resources/img/tour/seongeup2.jpg" alt="성읍녹차마을" width="650px" height="450px">  
        </div>

        <div id="image-main">
            <img src="/ex/resources/img/tour/seongeup3.jpg" alt="성읍녹차마을"  width="1280px">
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

        


    
</body>
</html>