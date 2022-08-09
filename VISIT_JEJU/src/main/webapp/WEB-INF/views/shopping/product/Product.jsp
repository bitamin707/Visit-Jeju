<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/shopping/product1.css?after"> 
    <script type="text/javascript" src="/ex/resources/js/shopping/product.js"/></script>
    
    <title>쇼핑몰_술</title>
</head>
<body>
    <!-- ============== 헤더 =============== -->
			<%@include file="../../header.jsp"%>
    <!-- ============== 헤더 =============== -->
        <!-- ↓↓start class wrap -->
        <div class="wrap"> 
            <div id="link_side"></div>
            <div class="info_header">
                <h6 class="page_font">Premium Liquor.</h6>
            </div>

            <ul class="back">
                <li style="display:inline-block"><a href="Shop_page1.html" id="home">Home</a> > </li>
                <li style="display:inline-block"><a>${boardDtoShop1.product_category }</a></li>
            </ul>

    <!-- ============== 제품 상단 =============== -->
            <!-- ↓↓start id container -->
            <!-- 1280x706 -->
            <div class="content_box">

                <!-- ======= 왼쪽 공간 ======= -->
                <!-- 607x569 -->
                <div class="product_col" href="javascript:test()">
                    <img src="/ex/resources/img/shopping/${boardDtoShop1.product_img }" style="width:100%; height:100%" onclick="test()">
                </div>
                <!-- 600x120 -->
                <div class="product_row">
                    <div class="row_box">
                        <img src="/ex/resources/img/shopping/술1.jpg" style="width:70px; height:70px">
                        <img src="/ex/resources/img/shopping/이미지선택.png" style="width:70px; height:70px">
                    </div>
                </div>
                
                <!-- ======= 왼쪽 공간 ======= -->

                <!-- ======= 오른쪽 공간 ======= -->
                <div class="product_col" id="product_col">
                    <div id="product_name">
                        ${boardDtoShop1.product_name }
                        <div class="icons_box">
                            <span>${boardDtoShop1.product_icon }</span>
                        </div>
                    </div>

                    <div id="product_price">
                        <span id="price"><span>${boardDtoShop1.product_price }원</span></span>
						<span id="share_2">EUR</span>
                        <span id="share">${boardDtoShop1.product_won } </span>
                    </div>    

                    <br><hr><br>

                    <div id="product_info1">
                        <p><span>${boardDtoShop1.product_info }</span>&nbsp;
                        
                    </p>
                    </div>

                    <div id="product_info2">
                        <p>원산지 fance</p>
                        <p>구매혜택 1,86 포인트 접릭예정</p>
                        <p>배송 방법 택배</p>
                        <p>배송비 12,50 EUR</p>
                        <p>최소 구매수량 1</p>
                        <p>최대 구매수량 ${boardDtoShop1.product_max_qty }원</p>
                        <p>1인당 최대 구매수량 <span>${boardDtoShop1.product_max_qty }</span></p>
                    </div>

                    <div id="product_stock">
                        수량
                        <hr style="margin: 15px auto">
                        <div class="option_btn">
                            <a href="javascript:minus_qty('a')">-</a>                        
                            <a href="javascript:plus_qty('b')">+</a>
                            <input type="text" id="stock" value="1" readonly="readonly">
                        </div>
                        <div class="option_btn_price">
                            <input type="text" id="stock_price" value="" readonly="readonly">
                            <span>EUR</span>
                        </div>
                    </div>

                    <div id="product_buy">
                        <div id="doBuy">품절된 상품입니다.</div>
                        <div id="doFav">장바구니♡</div>
                    </div>
                    
                </div>
                <!-- ======= 오른쪽 공간 ======= -->
    <!-- ============== 제품 상단 =============== -->
            </div>
            <!-- ↑↑end id container -->
    <!-- ============== 제품 하단 =============== -->
            <!-- ↓↓start id container_info -->
            <div id="container_info">
                <div id="info_header">
                    <div id="info_box">
                        <div id="detail"><a href="">상품정보</a></div> / 
                        <div id="review"><a href="">상품평</a></div>
                    </div>
                </div>

                <div id="info_img">
                    <img src="/ex/resources/img/shopping/제품안내1.png">
                    <img src="/ex/resources/img/shopping/제품안내2.png">
                </div>
            </div>
            <!-- ↑↑end id container_info -->
    <!-- ============== 제품 하단 =============== -->


	<%@include file="../../footer.jsp"%>
</body>
</html>