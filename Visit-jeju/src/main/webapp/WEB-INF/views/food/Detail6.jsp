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
            <img  src="/ex/resources/img/food/6_3.jpeg" alt="리치망고" class="tophaha">
            <div class="img-content">
                <h1>리치망고</h1>
                <p>#애월</p>
                <h3>기본정보</h3>
                <p>주소:제주특별자치도 제주시 애월읍 애월해안로 2723</p>
            </div>
        </div>
        <br>
        <div class="main-content">
            <div class="introduce"> 
                <br/>
                <img src="/ex/resources/img/food/6_0.jpg" alt="섬소나이" height="400px" width="100%"><br>
                <p>제주에서 런칭한 리치망고는 프렌차이즈로 현재 우도, 모슬포 성산 등 제주전역으로 확장하였다.
				</p>
                <img src="/ex/resources/img/food/6_1.jpg" alt="섬소나이" height="300px" width="49%" >
                <img src="/ex/resources/img/food/6_2.jpg" alt="섬소나이" height="300px" width="50%">
                <p>100% 리얼 망고가 들어간 스페셜망고쉐이크는 물론 망고라떼, 수제 망고 코코넛 잼, 망고 코코넛 쿠키 등 망고로 만든 다양한 제품을 만날 수 있다.</p>
                <img src="/ex/resources/img/food/6_3.jpeg" alt="섬소나이" height="400px" width="100%">
               <p>
           		대기자에게 번호표 대신 연예인 이름이 적힌 대기표를 주는 것이 특징이다.
               </p>
            </div>
            <div class="right-content">
                <div class="container">
                    <h3>추천페이지</h3>
                    <ul class="list-img">
                            <li>
                            <a href="/ex/food/Detail2">
                                <img src="/ex/resources/img/food/애월)봄날.jpg"  class="foodimg"  >
                                <h3>봄날 </h3>
                                <p>주소 : 제주특별자치도 제주시 애월읍 애월로1길 25</p>  
                                </a> 
                            </li>    
                
                            <li>
                            <a href="/ex/food/Detail5">
                                <img src="/ex/resources/img/food/5_4.jpg"  class="foodimg"  >
                                <h3>블랑로쉐 </h3>
                                <p>주소 : 제주특별자치도 제주시 우도면 우도해안길 783</p>  
                                </a> 
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