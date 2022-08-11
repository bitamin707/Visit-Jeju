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

.post {
	height: 27px;
	font-size: 17px;
	background-color: beige;
	margin-bottom:10px;
}
.post_area {
	font-size: 17px;
	font-weight:800px;
	background-color: beige;
	margin-bottom:10px;
}

.post_text {
	font-size: 21px;
	color: red;
	margin-top:10px;
}

.post_button {
	font-size:18px;
	padding:3px; 
	color: red;
	margin:auto 5px;
}


</style>
<script>


var a ="";
window.onload = function() {
     a = document.getElementById("thisvalue").value;
}

function goBack() {
	document.getElement
	location.href = "/ex/shopping/product/ShowContent?pno="+a;
}

var result='${msg}';
if(result=='success'){
	alert('처리가 완료되었습니다. 세부사항도 추가해 주세요.');
}


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
                    <img src="/ex/resources/img/shopping/${boardDtoShop1.product_img }" alt="" name="img" id="productImg"
					class="img-thumbnail" style="width: 100%; height: 100%;" />
                </div>
                <!-- 600x120 -->
                <div class="product_row">
                    <div class="row_box">
                    
                        <form id='form1' action="Create2" method="post"
						enctype="multipart/form-data" target="zeroFrame">
						<input type="file" name="file" id="file" style="width: 210px;" required /> 
							<input type="submit" value="파일업로드">
					</form>
						<input type="text" value="${savedName}">

                    </div>
                </div>
                
                <!-- ======= 왼쪽 공간 ======= -->

                <!-- ======= 오른쪽 공간 ======= -->
             <div class="product_col" id="product_col">
             
           	<form action=Modify_add method=POST>
			<h5 class="post_text">제품 고유번호</h5>
			<input type=text class="post" value="${boardDtoShop1.pno }" readonly name=pno id="thisvalue" required>
    		
    		<h5 class="post_text">제품 아이콘</h5>
			<input type=text class="post" value="${boardDtoShop1.product_icon}" name=product_icon required>
			
			<h5 class="post_text">최대 구매수량</h5>
			<input type=text class="post" value="${boardDtoShop1.product_max_qty }" name=product_max_qty required>
			
			<h5 class="post_text">제품 정보</h5>
			<p><textarea cols="53" rows="4.5" class="post_area" name="product_info" maxlength="100" required>${boardDtoShop1.product_info}</textarea></p>
			
			<h5 class="post_text">제품 이미지</h5>
			<input type=text class="post" value="${boardDtoShop1.product_img }" name=product_img required>
    		
    		<input type=submit value=수정완료 class="post_button">
    		<input type=button value=뒤로가기 onclick="goBack()" class="post_button">
    		</form>
    		
            </div>
            <!-- ↑↑end id container -->
            <iframe name="zeroFrame"></iframe>

</body>
</html>