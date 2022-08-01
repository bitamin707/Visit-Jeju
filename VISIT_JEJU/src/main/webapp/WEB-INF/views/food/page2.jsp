<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/food/style.css">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/food/styles.css">
    <title>축제와 일정</title>
   
</head>
<body>
    <!-- ============== 헤더 =============== -->
    <div id="header">
        <div id="container">
            <h1 class="logo">
                <img id="img1" src="/ex/resources/img/food/jeju.JPG">
            </h1>
            <nav class="menu">
                <ul class="depth">
                    <li><a class="menu_a">여행지</a></li>
                    <li><a class="menu_a">추천</a></li>
                    <li><a class="menu_a">쇼핑</a></li>
                    <li><a class="menu_a">브랜드</a></li>
                    <li><a class="menu_a">여행정보</a></li>
                    <li><a class="menu_a">나의 여행</a></li>
                </ul>
            </nav>
            <div class="language-wrap">
                <a id="login">로그인</a>
                <a id="lang">한국어</a>
                <button type="button" class="btn"></button>
            </div>
        </div>
    </div>
    <!-- ============== 헤더 =============== -->

    <!-- ============== 이미지 =============== -->
    <!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->
        
    <!-- ↓↓start class wrap -->
    <div class="wrap"> 
        <div class="intro_bg">
            <img src="/ex/resources/img/food/bg.png" style="width: 100%; height: 100%; position:relative">
            <div class="intro_text">
                <h1>음식</h1>
                <h4>맛집 소개</h4>
            </div>  
        </div>
    <!-- ============== 이미지 =============== -->

    <!-- ============= 태그 ================ -->
            <ul class="month">
                <li>#우도<input type="checkbox" class="wodobtn" value="우도" ></li>
                <li>#애월<input type="checkbox" class="awolbtn" value="애월" ></li>
                <li> #서귀포시<input type="checkbox" class="seobtn" value="서귀포시"  ></li>
                <li>#중문<input type="checkbox" class="jmoonbtn" value="중문" ></li>
                <li>#제주시내<input type="checkbox" class="jejucbtn" value="제주시내"></li>
            </ul>
            <div class="food">
                <ul>
                    <li><form id="search-form">
                        <input type="text" id="search">
                        <button id="searchBtn">search</button>
                    </form></li>
                </ul>
            </div>
    <!-- =============== 태그 ============== -->
            
            <!-- ============== 하단 =============== -->
            <!-- ↓↓start class event -->
            <section>
                <div class="container">
                    <ul class="list">
                    
                          
                     <!--서귀포시-->
                    <li>
                        <img src="/ex/resources/img/food/최고집.jpg" alt="" >
                        <h3>최고집</h3>
                        <p>제주특별자치도 서귀포시 김정문화로 71</p>   
                    </li>
                    <li>
                        <img src="/ex/resources/img/food/서귀)테라로사.jpg" alt="" >
                        <h3>테라로사</h3>
                         <p>제주특별자치도 서귀포시 칠십리로658번길 27-16</p>   
            	
                    </li>
                    <li>
                        <img src="/ex/resources/img/food/서귀)국수바다.jpg" alt="">
                        <h3>국수바다</h3>
                        <p>제주특별자치도 서귀포시 일주서로 982</p>   
                    </li>
                      
                        <!--애월-->
                 
                            <li>
                                <img src="/ex/resources/img/food/중문)고집돌우럭.jpg" alt="">
                                <h3>고집돌우럭</h3>
                                <p>제주특별자치도 서귀포시 일주서로 879</p>   
                            </li>
                            <li>
                                <img src="/ex/resources/img/food/중문)수두리보말칼국수.jpg" alt="">
                                <h3>수두리보말칼국수</h3>
                                <p>제주특별자치도 서귀포시 천제연로 192</p>   
                            </li>
                            <li>
                                <img src="/ex/resources/img/food/중문)옐로우카페.jpg" alt="" >
                                <h3>옐로우카페</h3>
                                <p>제주 서귀포시 중문관광로 90</p>   
                            </li>   
                    </ul>
                </div>
               <div class="url">
                <a href="page1.jsp" >1</a>
                <a href="page2.jsp" >2</a>
                <a href="page3.jsp" >3</a>
               </div>
            </section>
            <!-- ↑↑end class event -->
            <!-- =============== 하단 ============== -->
    </div> 
    <!-- ↑↑end class wrap -->
 <script src="/ex/resources/js/food/wodo.js"></script>
 <script src="/ex/resources/js/food/awol.js"></script>
 <script src="/ex/resources/js/food/seo.js"></script>s
 <script src="/ex/resources/js/food/jmoon.js"></script>
 <script src="/ex/resources/js/food/jejuc.js"></script>
 <script src="/ex/resources/js/food/search.js"></script>

</body>
</html>