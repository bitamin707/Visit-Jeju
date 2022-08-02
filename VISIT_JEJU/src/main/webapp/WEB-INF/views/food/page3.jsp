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
                <img id="img1" src="/ex/resources/img/food/jeju.JPG" href="/ex/food/page1">
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
            <section id="hide">
                <div class="container">
                   
                    <ul class="list">
                    
                         <!--제주시내-->
                    <li>
                        <img src="/ex/resources/img/food/제주시내)제주김만복.jpg" alt="" >
                        <h3>제주 김만복(김밥집)</h3>  
                        <p> 제주특별자치도 제주시 오라로 41</p>   
                    </li>
                    <li>
                        <img src="/ex/resources/img/food/제주시내)올래국수.jpg" alt="" >
                        <h3>올래국수</h3> 
                        <p>제주특별자치도 제주시 귀아랑길 24 (연동)</p>   
                    </li>
                    <li>
                        <img src="/ex/resources/img/food/제주도시)명당약과.jpg" alt="" >
                        <h3>이름 : 명당양과</h3>
                        <p> 제주시 원노형로 83</p>   
                        </ul>
            
                </div>
               <div class="url">
                <a href="page1" >1</a>
                <a href="page2" >2</a>
                <a href="page3" >3</a>
               </div>
            </section>
            
            <!-- ↑↑end class event -->
            <!-- =============== 하단 ============== -->
    </div> 
    <!-- ↑↑end class wrap -->
 <footer id="footer">
    <div class="footer_wrap">
        <div class="footer_title">
            <div class="footer_box">
                <img src="../../img/jeju.png" style="margin-top: 30px;" >
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
 <script src="/ex/resources/js/food/wodo.js"></script>
 <script src="/ex/resources/js/food/awol.js"></script>
 <script src="/ex/resources/js/food/seo.js"></script>
 <script src="/ex/resources/js/food/jmoon.js"></script>
 <script src="/ex/resources/js/food/jejuc.js"></script>
 <script src="/ex/resources/js/food/search.js"></script>

</body>
</html>