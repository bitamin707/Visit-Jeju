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
    <title>제주국제관악제제</title>
</head>
<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="https://api.cdn.visitjeju.net/photomng/imgpath/201804/30/7b7624c7-d655-42cd-b90d-60f7c1d460ce.jpg">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>제주국제관악제제</h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>제주특별자치도 제주시 동광로 69</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82) 064-710-3495</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="http://www.jiwef.org/" target="_blank">http://www.jiwef.org/</a></p>
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
                        <button type="button" class="schedule_btn" >
                            <div class="icon_schedule"></div>
                            <p>일정 등록</p>
                            <p>0</p>
                        </button>
                    </div>
                </div>
                <div class="detail">
                    <div class="detail_cont">
                        <br><br>
                        <p><b>섬, 그 바람의 울림 '제주국제관악제'</b></p>
                        <br><br>
                        <p>
                            매해 시원한 관악(管樂)으로 제주의 여름을 식히는 제주국제관악제, 
                            제주국제관악콩쿠르가 2022년 8월 8일부터 16일까지 제주도 일원에서 열린다.
                        </p>
                        <br><br>
                        <p> 기간 : 2022.8.8. (월) ~ 8.16. (화) <br>
                            장소 : 제주도 일원 <br>
                            요금 : 무료 <br>
                            <br>
                            ※ 전체 세부일정 및 프로그램은 6월 이후 결정될 예정입니다.
                        </p>
                        <br><br>
                    </div>

                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/26/4d6b945b-3cc4-4e43-9f05-02e57eac087f.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/26/45d4d713-92f0-4c68-ba2d-16d9ca98fd54.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/26/aded8e7d-4f06-49fe-9161-412bdcf97feb.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/26/b87f625b-a920-4c00-aafb-86ec20e1f12d.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/26/52b00d0c-0e6c-4360-8466-0844c15037fb.jpg"></li>
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
