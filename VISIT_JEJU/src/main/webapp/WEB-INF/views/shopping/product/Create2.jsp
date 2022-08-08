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
		width:500px;
		height:100px;
	}
</style>
<script>
$(document).ready(function(){

    $('#file').change(function() {

alert(this.value);
  readURL(this);

});

function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성
                    reader.onload = function (e) {
                    //파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
                        $('#productImg').attr('src', e.target.result);
                        //이미지 Tag의 SRC속성에 읽어들인 File내용을 지정
                        //(아래 코드에서 읽어들인 dataURL형식)
                    }                   
                    reader.readAsDataURL(input.files[0]);
                    //File내용을 읽어 dataURL형식의 문자열로 저장
                }

            }//readURL()--

});


var result = '${savedName}';
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
                    <img src="" alt="" name="img" id="productImg"
					class="img-thumbnail" style="width: 100%; height: 100%;" />
                </div>
                <!-- 600x120 -->
                <div class="product_row">
                    <div class="row_box">
                    
                        <form id='form1' action="Create2" method="post"
						enctype="multipart/form-data" target="zeroFrame">
						<input type="file" name="file" id="file" style="width: 210px;" /> 
							<input type="submit" value="파일업로드">
					</form>
						<input type="text" value="${savedName}">

                    </div>
                </div>
                
                <!-- ======= 왼쪽 공간 ======= -->

                <!-- ======= 오른쪽 공간 ======= -->
                <!-- ==== form start ===== -->
                <form action="create_add" method="post">
                <div class="product_col" id="product_col">
                    <div id="product_name">
                        <p class="post_text">아이콘 박스 작성 (EX: NEW, HOT, MD, SOLDOUT..)</p>
                        <input type="text" name=product_icon class="post">
                    </div>

                    <div id="product_price">
                        <span id="price">가격</span>
                        <span id="share">!@#$%^&*()</span>
                    </div>

                    <br><hr><br>

                    <div id="product_info1">
                        <p class="post_text">제품을 소개하는 세부내용. (500글자 미만 작성)</p>
                        <p><input type="text" class="post" name="product_info"></p>
                    </div>

                    <div id="product_info2">
                        <p class="post_text">제품의 최대 구매수량 (10개 미만)</p>
                        <input type="text" class="post" name=product_max_qty><br>
                        <p class="post_text">제품번호 (바꿀 수 없는 고유번호 입니다)</p>
                        <input type="text" readyonly=readonly value="<%=request.getParameter("pno") %>" name=pno class="post"><br>
                        <p class="post_text">이미지명을 입력하세요 (iframe 확인)</p>                         
                        <input type="text" class="post" name=product_img>
                        <input type="submit" value=" 세부사항 전송" class="post_text" style="margin:1px 100px; position:absolute;">
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
                </form>
                <!-- ==== form end ===== -->
                <!-- ======= 오른쪽 공간 ======= -->
    <!-- ============== 제품 상단 =============== -->
    <iframe name="zeroFrame"></iframe>
            </div>
            <!-- ↑↑end id container -->

</body>
</html>