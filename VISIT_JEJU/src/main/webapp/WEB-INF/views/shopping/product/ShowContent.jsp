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
<title>Insert title here</title>
<style>
iframe {
	width: 500px;
	height: 100px;
}

.post_text {
	color: red;
}

.post_button {
	margin:5px 70px; 
	font-size:18px; 
	padding:3px;
	position:absolute;
	color: red;
}

textarea, input{
	font-size: 17px;
	font-weight:800px;
}


</style>
<script>
	var result = '${savedName}';
	var a = "";
	var price = "";

	window.onload = function() {
		a = document.getElementById("this_pno").value;
		
		price = document.getElementById("share").innerHTML;   
		document.getElementById("stock_price").value = price;
		console.log($("#stock_price").val()); 
		
	}

	function cleanIt() {
		location.href = "/ex/shopping/product/Delete_add?pno=" + a;
	}
	
	function modifyIt() {
		location.href = "/ex/shopping/product/Modify_add?pno=" + a;
	}
	
	function goBack() {
		location.href = "/ex/shopping/main/Remocon_bag";
	}

</script>
</head>
<body>
    <!-- ============== 헤더 =============== -->
			
    <!-- ============== 헤더 =============== -->
        <!-- ↓↓start class wrap -->
        <div class="wrap"> 
            <div id="link_side"></div>
            <div class="info_header">
                <h6 class="page_font">Premium Liquor.</h6>
            </div>

            <ul class="back">
                <li style="display:inline-block">Home > </li>
                <li style="display:inline-block">와인</li>
            </ul>

    <!-- ============== 제품 상단 =============== -->
            <!-- ↓↓start id container -->
            <!-- 1280x706 -->
            <div class="content_box">

                <!-- ======= 왼쪽 공간 ======= -->
                <!-- 607x569 -->

            
                <div class="product_col" href="javascript:test()">
                    <img src="/ex/resources/img/shopping/${boardDtoShop1.product_img }"
					class="img-thumbnail" style="width: 100%; height: 100%;" />
                </div>
                
                <!-- 600x120 -->
                <div class="product_row">
                    <div class="row_box">               
                    </div>
                </div>
                
                <!-- ======= 왼쪽 공간 ======= -->

                <!-- ======= 오른쪽 공간 ======= -->
                <!-- ==== form start ===== -->
                
			
                <div class="product_col" id="product_col">
                    <div id="product_name">
                        <p class="post_text">아이콘 박스 작성 (EX: NEW, HOT, MD, SOLDOUT..)</p>
                        <input type="text" value="${boardDtoShop1.product_icon }" disabled>
                    </div>

                    <div id="product_price">
                        <span id="price">가격</span>
                        <span id="share">!@#$%^&*()</span>
                    </div>

                    <br><hr><br>

                    <div id="product_info1">
                        <p class="post_text">제품을 소개하는 세부내용. (500글자 미만 작성)</p>
                        <p><textarea cols="54" rows="4.5" class="post_area" disabled>${boardDtoShop1.product_info }</textarea></p>
                    </div>

                    <div id="product_info2">
                    
                        <p class="post_text">제품의 최대 구매수량 (10개 미만)</p>
                        	<input type="text" value="${boardDtoShop1.product_max_qty }" disabled><br>
                        <p class="post_text">제품번호 (바꿀 수 없는 고유번호 입니다)</p>
                        	<input type="text" value="${boardDtoShop1.pno }" disabled id="this_pno"><br>
                        <p class="post_text">이미지명을 입력하세요 (iframe 확인)</p>                         
                        	<input type="text" value="fasds" disabled>
                        	
                        	<button class="post_button" onclick="modifyIt()">수정</button>
                        	<input type=button class="post_button" value="삭제" style="margin:5px 130px;" onclick="cleanIt()">
                        	<input type=button class="post_button" value="뒤로가기" style="margin:5px 190px;" onclick="goBack()">
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
                    
                    </div>
                </div>
                <!-- ==== form end ===== -->
                </span>
                <!-- ======= 오른쪽 공간 ======= -->
    <!-- ============== 제품 상단 =============== -->
    
            </div>
            <!-- ↑↑end id container -->

</body>
</html>