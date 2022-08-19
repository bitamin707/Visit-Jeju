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
    <title>제주 문화유산 체험프로그램</title>
</head>
<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="https://api.cdn.visitjeju.net/photomng/imgpath/202205/03/cf0c9a1d-07c4-4333-9d30-684b3d0fb611.jpg">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>제주 문화유산 체험프로그램</h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>제주특별자치도 제주시 한경면 노을해안로 1100</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82) 064-772-0041</p>
                        </div>
                        <!--
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="https://jejugogohak.tistory.com/" target="_blank">제주고산리유적(www.gosanriyujeok.co.kr)</a></p>
                        </div> -->
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
                        <p><b>1. 생생문화재(문화재청 지역문화재 활용사업)</b></p><br>
                        <p> - 기  간 : 3월 ~ 12월<br>
                            - 내  용<br>
                             1) 선샤인의 나들이 : 제주 고산리 유적 교육체험 및 수월봉 일대를 트레킹하며 유적, 수월봉, 고산리 지역을 이해하는 답사 프로그램<br>
                             2) 제.고.담 : 선샤인이 되어 불을 얻고 다루는 과정과 지역농장에서 석기로 특산물 채취, 채취한 특산물로 조리체험하는 1일 프로그램. <br>(도내 최초로 문화재청 문화재교육프로그램 인증)<br>
                             3) 선샤인의 하루 : 선샤인이 되어 신석기시대의 의식주 체험과 수월봉 일대 전기자전거 투어를 진행하는 1박2일 가족 캠프 프로그램<br>
                             - 문  의 <br> 
                             전  화 : 제주고고학연구소 064-711-9996 <br>
                             홈페이지 : <a href="https://jejugogohak.tistory.com/" target="_blank">제주고고학연구소(https://jejugogohak.tistory.com/)</a><br>
                        </p>
                        <br><br>
                        <p><b>2. 고산리유적안내센터 상시교육 체험프로그램</b></p><br>
                        <p> - 기  간 : 2022년 매월 상시<br>
                            - 내  용: 제주고산리유적 대표 유물인 고산리식토기, 어형석촉 및 선사시대 유물 교육체험과 체험키트, 진로체험 등 진행<br>
                            - 문  의  <br>
                            전  화 : 제주고산리유적안내센터 064-772-0041 <br>
                            홈페이지 : <a href="https://www.gosanriyujeok.co.kr" target="_blank">제주고산리유적(www.gosanriyujeok.co.kr)</a><br>
                        </p>
                        <br><br>
                        <p><b>3. 매장문화재 발굴현장 활용 교육프로그램</b></p>
                        <p><b>프로그램 1. 탐라여행 유튜버(feat.고려시대)</b></p><br>
                        <p> - 기  간 : 5~10월 중 운영 <br>
                            * 총 4회 진행 예정, 회당 20명, 상시모집(주말 가능), 학교 단체 모집 <br>
                            - 내  용 : 고고학자, 문화재보존과학연구원 등 고고학 관련 진로 탐색, 연구소 탐방, 제주 항파두리 항몽 유적을 활용하여 직접 영상 촬영, 편집 등 <br>
                            영상 제작 2일 프로그램, 수료증 수여 <br>
                            - 문  의 <br>  
                            전  화 : 제주고고학연구소 064-711-9996 <br>
                            홈페이지 : <a href="https://jejugogohak.tistory.com/" target="_blank">제주고고학연구소(https://jejugogohak.tistory.com/)</a><br>
                        </p>
                        <br><br>
                        <p><b>4. 탐라길 조성사업</b></p>
                        <p><b>프로그램 1. 고고학자와 탐라길 함께 걸어요.</b></p><br>
                        <p> (제주 역사 · 문화 탐방 문화재 활용 트레킹 코스 – 탐라길 1길 : 용담동) <br>
                            - 일  정 : 2022.6.11.(토) / 6.12.(일) / 11.5.(토) / 11.6.(일) / 11.19.(토) <br>
                            * 총 5회 진행 예정, 회당 20명 모집(※ 우천 등으로 일정이 변경될 수 있음)   <br>
                            - 내  용 : 제주의 옛 이름 ‘탐라’와 ‘길’을 합쳐 ‘탐라길’은 아름다운 제주도와 문화재를 연결하여 문화재 전문가와 함께 걸어보는 문화재 1일 여행코스이다. <br>
                            - 문  의  <br>
                            전  화 : 제주고고학연구소 064-711-9996 <br>
                            홈페이지 : <a href="https://jejugogohak.tistory.com/" target="_blank">제주고고학연구소(https://jejugogohak.tistory.com/)</a><br>
                        </p>
                        <br><br>
                        <p><b>프로그램 2. 우리 마을 문화재, 지켜줘서 고마워.</b></p>
                        <p> - 일  정 : 2022년 8월 방학기간 평일 운영 예정 <br>
                            * 총 8회 진행 예정, 회당 30명 모집(기관, 단체 모집) <br>
                            - 내  용 : 탐라에 대한 강의, 탐라의 옛 지도 그리기 체험(끈 배낭 제공), 옹관묘 타임캡슐 만들기 등 문화재를 활용한 2시간 체험 교육을 진행 할 계획이다. <br>
                            - 문  의  <br>
                            전  화 : 제주고고학연구소 064-711-9996 <br>
                            홈페이지 : <a href="https://jejugogohak.tistory.com/" target="_blank">제주고고학연구소(https://jejugogohak.tistory.com/)</a><br>
                        </p>
                    </div>

                    <!--
                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202203/08/69b0be3e-2dd6-4b47-90b9-c17cf8b2d38f.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202203/08/9ba8f3f7-f301-4377-8ec3-2af43456284d.jpg"></li>
                            <li><img src="https://api.cdn.visitjeju.net/photomng/imgpath/202203/08/b8974c12-229b-4256-a007-9167d4080e21.jpg"></li>
                        </ul>
                        <p class="controller">
                            <span class="prev">&lang;</span>
                            <span class="next">&rang;</span>
                        </p>
                    </div>
                    <script src="../../js/festival/slideShow.js"></script>
                    -->
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
