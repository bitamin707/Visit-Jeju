<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/festival/festival_detail.css">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/festival/slideShow.css">
    <title>${festival_detailDto.fname }</title>

</head>


<body>
    <%@include file="../../header.jsp"%>
    <div id="wrap">
        <section>
            <div class="intro_bg">
                <img src="${festival_detailDto.fbg }">
            </div>
            
            <div class="content">
                <div class="intro_text">
                    <h1>${festival_detailDto.fname } </h1>
                    <h3>기본 정보</h3>
                    <div class="info">
                        <div class="info_sub_tit">
                            <p>주소</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>${festival_detailDto.faddress }</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>연락처</p>
                        </div>
                        <div class="info_sub_cont">
                            <p>(+82) ${festival_detailDto.ftel }</p>
                        </div>
                        <div class="info_sub_tit">
                            <p>홈페이지</p>
                        </div>
                        <div class="info_sub_cont">
                            <p><a href="${festival_detailDto.fhomepage }" target="_blank">${festival_detailDto.fhomepage }</a></p>
                        </div>
                    </div>
                    <div class="info_btn">
                        <button type="button" class="like_btn" onclick="ClickLike()">
                            <div id="icon_like"></div>
                            <div id="icon_like_click"></div>
                            <p>좋아요</p>
                            <p>${festival_detailDto.flike_count }</p>
                        </button>
                        <button type="button" class="review_btn" >
                            <a href="#review">
                                <div class="icon_review"></div>
                                <p>리뷰</p>
                                <p>${festival_detailDto.freview_count }</p>
                            </a>
                        </button>
                    </div>
                </div>
                <div class="detail">
                    <div class="detail_cont">
                        ${festival_detailDto.fcontent }
                    </div>

                    <div class="detail_slideShow">
                        <ul class="slides">
                            <li><img src="${festival_detailDto.fimg1 }"></li>
                            <li><img src="${festival_detailDto.fimg2 }"></li>
                            <li><img src="${festival_detailDto.fimg3 }"></li>
                            <li><img src="${festival_detailDto.fimg4 }"></li>
                            <li><img src="${festival_detailDto.fimg5 }"></li>
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
