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
    <title>2022 청수 곶자왈 반딧불이 축제</title>

</head>


<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/d95a9ff8-eee3-4447-a076-c665fe1e2060.jpg">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>2022 청수 곶자왈 반딧불이 축제 </h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>제주특별자치도 제주시 한경면 연명로 348</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82) 064-772-1303</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="http://www.cheongsuri.kr/index.php" target="_blank">http://www.cheongsuri.kr/index.php</a></p>
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
                        <p><b>2022 청수 곶자왈 반딧불이 축제</b></p>
                        <br><br>
                        <p> - 기  간 : 2022년 6월 11일 ~ 7월 10일까지  * 반딧불이 개체수에 따라 조기 종료 가능 <br>
                            - 시  간 : 매일 저녁 8시 시작   * 저녁 8시부터 9시 30분까지 15분 간격 순차 입장 <br>
                            - 입장료 : 대인 10,000원, 소인(초등학생까지) 5,000원 <br>
                            - 장  소 : 웃뜨르빛센터 곶자왈 입구 <br>
                            - 탐방코스 : 각 코스 8시부터 15분 간격 순차 출발 <br>
                              &nbsp 1) A코스 숲터널길 : 2.6km, 70분 <br>
                              &nbsp 2) B코스 테우리길 : 3.0km, 80분 <br>
                              &nbsp 3) C코스 미지의 숲길 : 1.5km, 40분 <br>
                              - 문  의 : 전화 - 064-772-1303, 064-773-1949, <a href="http://www.cheongsuri.kr/index.php" target="_blank" class="detail_cont_link">청수리 홈페이지</a> <br>
                            - 예  약 : <a href="https://booking.naver.com/booking/12/bizes/502562" target="_blank" class="detail_cont_link">예약 페이지(클릭)</a> <br>
                            <b>* 인터넷 예약 70% 판매, 현장 30% 판매 (잔여분 등)</b>  <br>
                            * 6월 11일 ~ 7월 3일 인터넷 예약+현장 판매 <br>
                            * 7월 4일 ~ 7월 10일 당일현장 판매 (개체수 적을 시 운영 안 할 수도 있음) <br>
                            * 날씨와 현지 사정에 따라 체험유무 및 시간이 변경 될 수 있으니 찾아오시기 전 홈페이지 공지사항을 반드시 확인 바랍니다.
                        </p>
                        <br><br>
                        <p>
                            <b>✔ 입장시 유의사항</b> <br>
                            &nbsp◎ 불빛 사용 금지 : 손전등, 핸드폰 등 <br>
                            &nbsp◎ 긴팔, 긴바지, 운동화 착용 필수 <br>
                            &nbsp◎ 아이들 불빛 나오는 신발, 반짝이 신발 착용 금지 <br>
                            &nbsp◎ 진한향수, 모기퇴치제 사용금지 <br>
                            &nbsp◎ 금연, 관람시 정숙, 촬영금지 <br>
                            &nbsp◎ 반딧불 채집 절대 금지(적발시 퇴장 조치) <br>
                        </p>
                    </div>

                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/201904/12/f647ce16-bc0c-44b2-907a-262062810647.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/201904/12/c43b23a1-2d6c-48cb-b42b-14b5e54efe3a.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/201904/12/0b5b0117-3222-44f8-828a-a83d5a02ebaf.jpg"></li>
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
