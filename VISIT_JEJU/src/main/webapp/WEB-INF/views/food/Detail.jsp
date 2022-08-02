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
            <img  src="/ex/resources/img/food/하하호호top.jpg" alt="하하호호"  style="width: 100%; height: 600px; position:relative">
            <div class="img-content">
                <h1>하하호호</h1>
                <h2>(HAHAHOHO)</h2>
                <p>#우도</p>
                <h3>기본정보</h3>
                <p>주소:제주특별자치도 제주시 우도면 우도해안길 532</p>
            </div>
        </div>
        <div class="main-content">
            <div class="introduce"> 
                <img src="/ex/resources/img/food/ha1.jpg" alt="하하호호" height="400px" width="100%"><br>
                <p>하하호호는 하우목동항 북측에 위치한 간이음식점이다.</p>
                <img src="/ex/resources/img/food/ha2.jpg" alt="하하호호" height="300px" width="49%" >
                <img src="/ex/resources/img/food/ha3.jpg" alt="하하호호" height="300px" width="50%">
                <p>두툼한 흑돼지 패티위에 우도 땅콩이나 마늘칩이 뿌린 수제버거가 대표적인 메뉴로 <br>
                    성인남자가 배부를 정도인 1.5인분의 양이다.</p> 
                <img src="/ex/resources/img/food/ha4.jpg" alt="하하호호" height="400px" width="100%">
               
               
                <p>야채 등의 재료를 아낌없이 넣어 양이 푸짐하여 많은 여행객의 호감을 얻고 있다.</p>
            </div>
            <div class="right-content">
                <div class="container">
                    <h3>추천페이지</h3>
                    <ul class="list-img">
                            <li>
                                <img src="/ex/resources/img/food/애월)봄날.jpg" alt="" >
                                <h3><a href="/ex/food/Detail2"  id="red">봄날</a> </h3>
                                <p>주소 : 제주특별자치도 제주시 애월읍 애월로1길 25</p>   
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