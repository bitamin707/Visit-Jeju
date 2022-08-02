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
<<<<<<< HEAD
    <div id="header">
        <div id="container">
            <h1 class="logo">
              
                <img id="img1" src="/ex/resources/img/main/jeju.png" >
             
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
=======
   <%@include file="../header.jsp" %>
>>>>>>> branch 'master' of https://github.com/bitamin707/Visit-Jeju.git
    
    <section>
        <div class="img">
             <img src="/ex/resources/img/food/1봄날.jpg" alt="하하호호"  width="2000px" height="600px">
            <div class="img-content">
                <h1>바자속 고등어 쌈밥</h1>
                <p>#애월</p>
                <h3>기본정보</h3>
                <p>주소:제주특별자치도 제주시 애월읍 일주서로 7089</p>
            </div>
        </div>
        <br>
        <div class="main-content">
            <div class="introduce"> 
                <img src="/ex/resources/img/food/3_4.jpg" alt="봄날" height="400px" width="100%"><br>
                <p>공항에서 애월 해안도로로 15분쯤 달리다 보면 도로변에 위치한 바다속고등어쌈밥을 발견할 수 있다.
					이곳은 고등어 요리 전문점이지만 갈치조림이나 옥돔구이, 해물뚝배기, 한치물회 등 여러 해산물 요리를 같이 판매하고 있다.
				</p>
                <img src="/ex/resources/img/food/3_2.jpg" alt="봄날" height="300px" width="49%" >
                <img src="/ex/resources/img/food/3_3.jpg" alt="봄날" height="300px" width="50%">
                <p>대표 메뉴 쌈밥은 묵은지를 넣은 고등어조림으로, 고등어와 묵은지를 채소에 싸먹는 요리이다.
					고등어 쌈밥과 함께 흑돼지를 넣은 두루치기 쌈밥도 인기있는 메뉴이다.</p>
                <img src="/ex/resources/img/food/3_1.jpg" alt="봄날" height="400px" width="100%">
               <p>
           		 밑반찬으로 나오는 간장게장은 별도로 판매를 하고 있고 전국에 택배 가능하다.
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
                                <img src="/ex/resources/img/food/4_1.jpg" alt="" >
                                <h3><a href="/ex/food/Detail4"  id="red">섬소나이</a> </h3>
                                <p>주소 : 제주특별자치도 제주시 우도면 우도해안길 814</p>   
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
<%@include file="../footer.jsp" %>
    <script src="/ex/resources/js/food/review.js"></script>
</body>
</html>