<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/ex/resources/css/food/style.css">
    <link rel="stylesheet" href="/ex/resources/css/food/styles.css">
</head>
<body>
	<!-- ============== 헤더 =============== -->
	<%@include file="../header.jsp" %>
    <!-- ============== 헤더 =============== -->
    
    <section>
        <div class="img">
            <img src="/ex/resources/img/food/5_0.jpg" alt="하하호호"  width="2500px" height="600px">
            <div class="img-content">
                <h1>블랑로쉐</h1>
                <p>#우도</p>
                <h3>기본정보</h3>
                <p>주소:제주특별자치도 제주시 우도면 우도해안길 783</p>
            </div>
        </div>
        <br>
        <div class="main-content">
            <div class="introduce"> 
                 <img src="/ex/resources/img/food/5_1.jpg" alt="섬소나이" height="300px" width="49%" >
                <img src="/ex/resources/img/food/5_2.jpg" alt="섬소나이" height="300px" width="50%">
                <p>우도 하고수동 해변가에 위치한 카페다. 안에서 파랗게 빛나는 하고수동 해변을 볼 수 있다.
				       날이 좋으면 전면이 창으로된 한쪽 벽을 오픈해 시원한 바닷바람을 만끽하며 휴식을 취할 수 있다. 
				</p>
                <img src="/ex/resources/img/food/5_4.jpg" alt="섬소나이" height="300px" width="49%" >
                <img src="/ex/resources/img/food/5_5.jpg" alt="섬소나이" height="300px" width="50%">
                <p>상큼한 에이드와 여러 음료를 파는데 그중에서도 우도땅콩으로 만든 빙수와 크림라떼가 대표메뉴다.
				땅콩치즈케이크와 제주말차티라미슈 등 지역의 특산품을 녹여낸 다양한 메뉴도 만나볼 수 있다.
				</p>
                <img src="/ex/resources/img/food/5_3.jpg" alt="섬소나이" height="400px" width="100%">
               <p>
           		화이트 톤의 실내와 테라스 등의 전경이 예뻐 사진찍기 좋은 곳으로도 알려졌다.
               </p>
            </div>
            <div class="right-content">
                <div class="container">
                    <h3>추천페이지</h3>
                    <ul class="list-img">
                            <li>
                                <img src="/ex/resources/img/food/4_1.jpg" alt="" >
                                <h3><a href="/ex/food/Detail4"  id="red">섬소나이</a> </h3>
                                <p>주소 : 제주특별자치도 제주시 우도면 우도해안길 814</p>   
                            </li>  
                
                            <li>
                                <img src="/ex/resources/img/food/애월)봄날.jpg" alt="" >
                                <h3><a href="/ex/food/Detail2"  id="red">봄날</a> </h3>
                                <p>주소 : 제주특별자치도 제주시 애월읍 애월로1길 25</p>   
                            </li>      
                    </ul>
                </div>
                <div class="review">
                    <ul> 
                        <li><span>조회수 평점</span> <button>좋아요</button></li>
                    </ul>
                </div>
                <div class="travel">
                    <h2>리뷰쓰기</h2>
                    <form id="todo-form">
                        <input type="text" placeholder="Write a To Do Press Enter" required>
                        <input type="submit" value="저장" class="submit">
                    </form>
                    <ul id="todo-list"></ul>
                    
                </div>
            </div>
        </div>
    </section>
    <script src="/ex/resources/js/food/review.js"></script>
    
	<!-- =============== 하단 ============== -->
	<footer id="footer" style=" margin-top: 1300px">
        <div class="footer_wrap">
            <div class="footer_title">
                <div class="footer_box">
                    <img src="/ex/resources/img/main/jeju.png" style="margin-top: 30px;" >
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
	<!-- =============== 하단 ============== -->
	
    
</body>
</html>