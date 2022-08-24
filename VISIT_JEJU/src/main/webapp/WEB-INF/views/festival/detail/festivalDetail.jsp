<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
                            <li><img class="slideImgs" src="${festival_detailDto.fimg1 }"></li>
                            <li><img class="slideImgs" src="${festival_detailDto.fimg2 }"></li>
                            <li><img class="slideImgs" src="${festival_detailDto.fimg3 }"></li>
                            <li><img class="slideImgs" src="${festival_detailDto.fimg4 }"></li>
                            <li><img class="slideImgs" src="${festival_detailDto.fimg5 }"></li>
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
                        <%@include file="festival_reviewCRUD.jsp"%>
						<br>
                        <hr>
                        <%@include file="festival_reviewContent.jsp"%>
                    </div>
                </div>
            </div>
            <script src="/ex/resources/js/festival/slideShow.js"></script>
            <script src="/ex/resources/js/festival/like.js"></script>
        </section>
        <%@include file="../../footer.jsp"%>
    </div>
</body>
</html>
