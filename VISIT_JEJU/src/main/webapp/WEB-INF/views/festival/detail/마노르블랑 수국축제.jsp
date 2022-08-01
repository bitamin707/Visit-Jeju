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
    <title>마노르블랑 수국축제</title>
</head>
<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202104/13/67c18ae7-199b-4090-b119-1a2758e395d7.jpg">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>마노르블랑 수국축제</h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>제주특별자치도 서귀포시 안덕면 일주서로2100번길 46</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82) 064-794-0999</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="https://manorblanc.modoo.at/" target="_blank">https://manorblanc.modoo.at/</a></p>
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
                        <p><b>"수국축제의 향연, 전세계 30여종 7천여본 수국들을 만나다 "</b></p>
                        <p><b>마노르블랑 수국축제</b></p>
                        <br><br>
                        <p> <b>기 간</b> : 2022년 4월 18일(월) ~ 2022년 8월 31일(수) <br>
                            <b>시 간</b> : 09:00 ~ 18:30 <br>
                            <b>장 소</b> : 마노르블랑(제주특별자치도 서귀포시 일주서로2100번길 46) <br>
                            <b>홈페이지</b> : <a href="https://manorblanc.modoo.at/" target="_blank">https://manorblanc.modoo.at/</a> <br>
                            <b>문 의</b> : 064-794-0999
                        </p>
                        <br><br>
                        <p>
                            마노르블랑은 서귀포시에 위치한 가든 카페이다. 이곳은 작년에 이어 올해도 유럽수국축제를 맞이하고 있다. 축제기간은 4월부터 8월까지이다. <br>
                            <br>
                            마노르블랑은 우리나라 최남단에 위치하고 있어 노지 수국들이 우리나라에서 가장 빨리 개화중이다. 제주 수국을 비롯하여 전세계 30여종 7천여본 수국은 오직 마노르블랑에서만 만날 수 있다. 작년에 비해 더 많고 다양한 수국들로 준비되었고 사랑과 정성으로 가꾸어진 다양한 수국들을 마노르블랑 곳곳에서 만날 수 있다. 또한 산방산과 송악산 사이로 형제섬과 사계앞바다가 보이는 환상적인 조망은 마노르블랑에서만 만날 수 있다. <br>
                            <br>
                            환상적인 조망과 함께 수국 인생샷을 남길 수 있는 다양한 산책로와 포토존이 준비되어 있고 야외 잔디정원에서는 피아노 연주 버스킹을 즐길 수 있다. <br>
                            <br>
                            이곳 마노르블랑은 지금 유럽수국축제의 향연이 펼쳐지고 있다. <br>
                        </p>
                    </div>

                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202104/13/7cc9135d-6121-4d92-b87c-9ed2449e494a.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202104/13/32d3daed-895d-4cf3-a370-68613fc11efa.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202104/13/ee40d305-a905-4e2b-870c-2ec0c20e6c03.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202104/13/e50031a7-3c99-410f-80ef-0bcf24f771b4.jpg"></li>
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
