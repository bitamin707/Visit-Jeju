<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/festival/festival_detail.css">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/festival/slideShow.css">
    <title>한림공원 부겐빌레아축제</title>
</head>
<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/20/11d7fec2-750a-4720-8ef0-3376de44d9bb.jpg">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>한림공원 부겐빌레아축제</h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>제주특별자치도 제주시 한림읍 한림로 300</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82) 064-796-0001</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="http://www.hallimpark.com" target="_blank">http://www.hallimpark.com/</a></p>
                        </div>
                    </div>
                    <div class="info_btn">
                        <button type="button" class="like_btn" onclick="ClickLike()">
                            <div id="icon_like"></div>
                            <div id="icon_like_click"></div>
                            <p>좋아요</p>
                            <p>0</p>
                        </button>
                        <button type="button" class="review_btn" >
                            <a href="#review">
                                <div class="icon_review"></div>
                                <p>리뷰</p>
                                <p>0</p>
                            </a>
                        </button>
                    </div>
                </div>
                <div class="detail">
                    <div class="detail_cont">
                        <br><br>
                        <p><b>한림공원 부겐빌레아 축제</b></p>
                        <br><br>
                        <p> <b>▶ 기  간</b> : 2022년 5월 20일(금) ~ 6월 19일(일) <br>
                            <b>▶ 장  소</b> : 한림공원 제주석분재원 내 열대분재원, 아열대식물원 관엽온실, 연못정원 <br>
                            <b>▶ 문  의</b> : 064-796-0001
                        </p>
                        <br><br>
                        <p>
                            제주를 오롯이 느낄 수 있는 한림공원에서 5월 20일부터 제 5회 부겐빌레아 축제를 개최한다. <br>
                            <br>
                            한림공원은 국내에서 유일하게 부겐빌레아 축제를 열고 있으며, 열대지방에서만 볼 수 있는 부겐빌레아를 30년 이상 온실에서 재배하고 있다. <br>
                            <br>
                            한림공원 열대분재원 내 부겐빌레아는 붉은색, 노랑색, 보라색 등 화려한 색으로 관람객들의 눈길을 끌고 있으며, 꽃처럼 보이는 다양한 색의 꽃싸개 안에 <br>
                            나팔 모양으로 작게 피어있는 부겐빌레아 꽃을 보는 것 또한 부겐빌레아 관람의 묘미이다.  <br>
                            <br>
                            한림공원 부겐빌레아 축제는 20일부터 다음달 19일까지 한림공원 내부에 있는 제주석분재원 내 열대분재원, 아열대식물원 관엽온실, 연못정원 등에서 볼 수 있다.
                        </p>
                    </div>

                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/20/98449f8e-16cd-49fc-894c-6f860233ad6f.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/20/3e5548d7-7e91-4a02-9015-cbc037bcf65b.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202105/24/741b4b3d-997e-4ee9-85c7-5bd68969b987.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/20/bb3c3df5-01c4-49db-a1b6-b0eef52d6c0c.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/20/407e1417-ba82-44a5-9022-58e35922a38e.jpg"></li>
                        </ul>
                        <p class="controller">
                            <span class="prev">&lang;</span>
                            <span class="next">&rang;</span>
                        </p>
                    </div>
                    <hr style="margin: 100px 0 30px">
                    <div id="review">
                        <h2>리뷰</h2>
                        <br>
                        <div class="review_box">
                            <div class="review_login">
                                <div>
                                    <input type="text" class="review_id" name="id" placeholder="아이디" maxlength="10">
                                </div>
                                <div>
                                    <input type="password" class="review_pw" name="pw" placeholder="패스워드 (구현x)">
                                </div>
                            </div>
                            <div class="review_cont">
                               <textarea rows="3" cols="120" class="review_text" placeholder="리뷰을 입력해 주세요." maxlength="500"></textarea>
                            </div>
                            <div class="review_btn_box">
                                <button type="button" class="review_btn" onclick="submit()">등록</button>
                            </div>
                        </div>
                        <br>
                        <hr>
                        <div class="review_div">
                        </div>
                    </div>
                </div>
            </div>
            <script src="/ex/resources/js/festival/review.js"></script>  
            <script src="/ex/resources/js/festival/slideShow.js"></script>
            <script src="/ex/resources/js/festival/like.js"></script>
        </section>
        <%@include file="../../footer.jsp"%>
    </div>
</body>
</html>
