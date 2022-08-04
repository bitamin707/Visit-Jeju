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
            <img src="/ex/resources/img/food/4_0.jpg" alt="섬소나이"   style="width: 100%; height: 600px; position:relative">
            <div class="img-content">
                <h1>섬소나이</h1>
                <p>#우도</p>
                <h3>기본정보</h3>
                <p>주소:제주특별자치도 제주시 우도면 우도해안길 814</p>
            </div>
        </div>
        <br>
        <div class="main-content">
            <div class="introduce"> 
                <img src="/ex/resources/img/food/4_1.jpg" alt="섬소나이" height="400px" width="100%"><br>
                <p>우도에 위치한 섬소나이는 짬뽕과 피자를 즐길 수 있는 작고 예쁜 식당이다.짬뽕 세 종류와 피자 두 종류 총 다섯가지다.
                                           이 집 짬뽕 맛의 비결은 한약재 등 10가지 이상의 재료를 사용하여 12시간 동안 푹 끓여낸 육수에서 나온다. 
                                           톳을 사용해 면을 만들고 모자반(몸)을 넣어 우도의 맛을 살렸다. 
				</p>
                <img src="/ex/resources/img/food/4_2.jpg" alt="섬소나이" height="300px" width="49%" >
                <img src="/ex/resources/img/food/4_3.jpg" alt="섬소나이" height="300px" width="50%">
                <p>면은 매일 직접 뽑아내고 당일생산 당일소모를 원칙으로 삼는다. 신선하게 내기 위해 주문을 받은 후 한 그릇씩 조리하니 정성이 이만저만이 아니다.
                                            주문 즉시 한 그릇씩 조리를 하기 때문에 대기시간이 좀 있을 수도 있다.</p>
                <img src="/ex/resources/img/food/4_0.jpg" alt="섬소나이" height="400px" width="100%">
               <p>
           		파이프를 활용한 모던하면서 인더스트리얼한 인테리어가 독특한 감성을 자아낸다. 도의 낭만을 느낄 수 있는 감성 맛집이다.
               </p>
            </div>
            <div class="right-content">
                <div class="container">
                    <h3>추천페이지</h3>
                    <ul class="list-img">
                            <li>
                                <img src="/ex/resources/img/food/바다속 고등어쌈밥.jpg" alt="" >
                                <h3><a href="/ex/food/Detail"  id="red">하하호호</a> </h3>
                                <p>주소:제주특별자치도 제주시 우도면 우도해안길 532</p>  
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