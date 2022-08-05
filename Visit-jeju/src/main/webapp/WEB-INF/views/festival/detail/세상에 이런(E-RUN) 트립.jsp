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
    <title>세상에 이런(E-RUN) 트립</title>
</head>
<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/51b3f987-da3d-4591-a697-61e242ecc386.jpg">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>세상에 이런(E-RUN) 트립</h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>제주특별자치도 서귀포시 성산읍 서성일로 260</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82)</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="https://www.instagram.com/jeju_erun_trip/" target="_blank">https://www.instagram.com/jeju_erun_trip/</a></p>
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
                        <p><b>2022 제로를 외쳐봐, 세상에 E-RUN TRIP!</b></p>
                        <p><b>마노르블랑 수국축제</b></p>
                        <br><br>
                        <p>
                            E-RUN TRIP이란? <br>
                            E-RUN은 Eco-RUN의 줄임말로 청정 제주를 위해 제주를 사랑하는 여러 기업/단체가 모여 기획한 친환경 관광 프로젝트이다. <br>
                            <br>
                            E-RUN TRIP 탄생 계기는? <br>
                            제주 바다에는 각자 다른 업으로 살아가는 이들이 있다. <br>
                            물질을 업으로 삼아 살아가는 제주해녀, 안전과 구조 등의 업무수행을 하는 제주해양경찰, 제주 해양레저스포츠를 이끄는 다이버 <br>
                            <br>
                            이들의 공통점은 제주 바다를 지키기 위해, 누구보다 깨끗하게 해양정화에 힘쓰고 있다. 단순 봉사 개념이 아닌 쉽게 즐기고 느끼기 위해 그리고 많은 이들에게 공유하기 위해 E-RUN TRIP이 만들어졌다. <br>
                            <br>
                            2022 세상에 E-RUN TRIP은 환경보호를 최우선하고 있다. 슬로건 '제로를 외쳐봐'에 맞춰 탄소제로, 플라스틱제로, 쓰레기제로를 지향하고 있다. 100% 제로가 안되더라도 행사로 인해 발생되는 쓰레기는 최소화하고 종료 후 남는 플라스틱 등 쓰레기는 다시 재탄생될 예정이다. <br>
                            <br>
                            E-RUN TRIP을 통해 제주, 더 나아가 대한민국이 보다 깨끗해지길 바래보자. <br>
                        </p>
                        <br><br>
                        <p> - 행사주최 : 제주특별자치도 <br>
                            - 행사주관 : 서귀포시, 제주관광공사 <br>
                            - 파트너사 : 서귀포해양경찰서, 플로빙코리아, 티웨이항공, 제로그램, 톤28, 제주패스, 도담스튜디오, 클룹, 랩노쉬, 지구별가게, 푸른컵 <br>
                            - 공식계정 : <a href="https://www.instagram.com/jeju_erun_trip/" target="_blank" class="detail_cont_link" style="text-decoration: none;">SNS(인스타그램) @jeju_erun_trip</a> <br>
                            - 행사기간 : 2022.6.30(목) ~ 7.2(토) * 접수시 선택사항에 따라 참가일정 상이 / *기상상황 등 대내외 상황에 따라 변경가능 <br>
                            - 신청기간 : 2022.5.30(월) 18시 - 2022.6.11(토) 24시 <br>
                            - 모집인원 : 최대 100팀 예정(1팀 최소 1인 ~ 최대 4인) <br>
                            - 선정발표 : 2022.6.12(일) *상황에 따라 변경 가능 <br>
                            - 제공물품 : 추후공지 <br>
                            - 보증금 : 30,000원 *행사 종료 후 환급 예정 <br>
                            - 사전혜택 <br>
                             · 참가확정시 티웨이항공 10% 할인코드(김포->제주 편도) <br>
                             · 제주패스 렌트카 5% 할인코드(전기차에 한해) 발송 <br>
                        </p>
                        <br><br>
                    </div>

                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/c11089cb-c7a9-4e44-8b81-884b21376a92.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/c8adf52d-9139-41d5-914e-c23a78c1501c.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/e64f52ee-4fd2-438e-b9a5-08b462289fb1.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/e58f4061-7f24-404d-863d-469bf1e917f1.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/ddfa5934-3bac-4e35-8765-40e4c4a46b8e.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202206/03/29f5fd5e-49d6-4bad-af2c-086bb9fa9a1d.jpg"></li>
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
