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
            <img src="/ex/resources/img/food/1봄날.jpg" alt="하하호호"  width="2500px" height="600px">
            <div class="img-content">
                <h1>봄날</h1>
                <p>#애월</p>
                <h3>기본정보</h3>
                <p>주소:제주특별자치도 제주시 애월읍 애월로1길 25</p>
            </div>
        </div>
        <br>
        <div class="main-content">
            <div class="introduce"> 
                <img src="/ex/resources/img/food/4봄날.jpg" alt="봄날" height="400px" width="100%"><br>
                <p>드라마의 주인공이 일하던 카페라서 유명해졌다.
                    해변을 바라보며 차 한잔의 여유를 즐기기에 좋으며 제주 돌담의 정취를 느낄 수 있다.</p>
                <img src="/ex/resources/img/food/2봄날.jpg" alt="봄날" height="300px" width="49%" >
                <img src="/ex/resources/img/food/3봄날.jpg" alt="봄날" height="300px" width="50%">
                <p>카페견 웰시코키 네마리가 반겨주는데 애견인들에게는 반가운 소식이 아닐 수 없다.
                    근처 한담해변을 산책하거나 올레길을 걷다가 카페에 들러 휴식을 취할 수 있다.</p>
                <img src="/ex/resources/img/food/1봄날.jpg" alt="봄날" height="400px" width="100%">
               <p>
                자가용 이용시 주차장이 혼잡하니 큰 길에 세우고 걸어 내려 가는게 좋다. 
                대중교통을 이용한다면 한담동 정류장에서 하차해  3분거리에 위치해있다.
               </p>
            </div>
            <div class="right-content">
                <div class="container">
                    <h3>추천페이지</h3>
                    <ul class="list-img">
                            <li>
                                <img src="/ex/resources/img/food/우도)하하호호.jpg" alt="" >
                                <h3><a href="/ex/food/Detail"  id="red">하하호호</a> </h3>
                                <p>주소:제주특별자치도 제주시 우도면 우도해안길 532</p>  
                            </li>
                
                            <li>
                                <img src="/ex/resources/img/food/바다속 고등어쌈밥.jpg" alt="" >
                                <h3><a href="/ex/food/Detail3"  id="red">바다속 고등어쌈밥</a> </h3>    
                                <p>주소 : 제주특별자치도 제주시 애월읍 애월해안로 7089</p>   
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