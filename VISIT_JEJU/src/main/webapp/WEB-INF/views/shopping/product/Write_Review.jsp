<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript" src="/ex/resources/smarteditor/js/service/HuskyEZCreator.js"
	charset="utf-8"></script>
    <title>Document</title>
    <style>
        #tbl_box {
            margin: auto;
        }
        table {
            height: 200px;
        }
        input {
            width: 500px;
            height:25px;
        }
        #btn_box {
        border:1px solid black; 
        width:1000px;
        margin:10px 0px; 
        text-align:center;
        }

        #btn_box input {
        width:200px;
        margin-left:5%;
        }
        select {
        width:100px;
        height:30px;
        }
        input[readonly] {
            width: 390px;
            background-color: rgb(228, 228, 228);
        }
        .post {
			font-size: 19px;
			background-color: beige;
		}
		
		
		<!-- 별점 리뷰 -->
    .starDiv{
    }
    .starFieldset{
        width: 140px;
        display: inline-block;
        direction: rtl;
        border:0;
    }
    .starFieldset legend{
        text-align: right;
    }
    .starFieldset input[type=radio]{
        display: none;
    }
    .starFieldset label{
        font-size: 22px;
        color: transparent;
        color:rgb(110, 110, 110);
        cursor:pointer;
    }
    .starFieldset label:{
        cursor: pointer;
        color: #dd9309; !important
    }
    .starFieldset label: ~ label{
        cursor: pointer;
        color: #dd9309; !important
    }
    .starFieldset input[type=radio]:checked ~ label{
        color: #dd9309; 
    }

        
    </style>

    <script>
   
        function productChange(e) {
        // 선택된 데이터 가져오기
        const value = e.value;
        // 데이터 출력
        document.getElementById('productInput').value
            = value;
        }

        var a;
        var b;
        function recommandChange(e) {
            // 선택된 데이터 가져오기
            a = e.value;
            // 데이터 출력
            document.getElementById('recommandInput').value
                = a;

            }
        
        function recommandChange2(e) {
            // 선택된 데이터 가져오기
            b = e.value;
                if(a==b) {
                    alert("추천 태그를 중복으로 선택할 수 없습니다.");
                } else {
                    document.getElementById('recommandInput2').value = b;
                }
            }
        
        function back() {
            location.href = '/ex/shopping/product/Product?'
            		+'pno=' + '${boardDtoShop1.pno}';
        }
        
        $.ajaxPrefilter(function (options) {
        	  var headerName = '${_csrf.headerName}';
        	  var token = '${_csrf.token}';
        	  if (options.method === 'POST') {
        	      options.headers = options.headers || {};
        	      options.headers[headerName] = token;
        	  }
        	});
        
        
    </script>
</head>

<body>
	<input type=hidden value="${boardDtoShop1.pno}">
    <div id="tbl_box">
    <form action="/ex/shopping/product/Write_Review?pno=${boardDtoShop1.pno}" method="post">
			<table border="1" width="1000px" id="customers">

				<tr>
					<th>내 아이디</th>
					<td><input type="text" name=userid required maxlength="15"></td>
				</tr>

				<tr>
					<th>후기 작성</th>
					<td>
					<textarea name="review" id="shopping_content" rows="10"
			cols="1" placeholder="숙소 내용"></textarea>
					</td>
				</tr>
				
				
				
		<tr>	
        <th>제품 이름</th>
            <td>
				<input type="text" id="productInput" name=what_product readonly required>
				<select onchange="productChange(this)">
					<option selected disabled>---</option>
					<!-- 옵션에서 기본선택, 선택안되게 설정. -->
					<c:forEach items="${list}" var="dto">
					<option value="${dto.product_name }">${dto.product_name }</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr>
            <th>추천 태그를 골라주세요!</th>
            <td>
                <input type="text" id="recommandInput" name=recommand readonly required>
                    <select onchange="recommandChange(this)">
                        <option selected disabled>---</option>
                        <option value="코디하기<br>쉬워요!">코디하기 쉬워요</option>
                        <option value="재질이 좋아요!">재질이 좋아요</option>
                        <option value="디자인이<br>멋져요!">디자인이 멋져요</option>
                        <option value="크기가<br>적당해요!">크기가 적당해요</option>
                        <option value="고급스러워요!">고급스러워요</option>
                        <option value="무난해요!">무난해요</option>
                        <option value="아쉬워요..">아쉬워요</option>
                        <option value="별로에요..">별로에요</option>
                </select>
                
                <input type="text" id="recommandInput2" name=recommand2 readonly required>
                    <select onchange="recommandChange2(this)">
                        <option selected disabled>---</option>
                        <option value="코디하기<br>쉬워요!">코디하기 쉬워요</option>
                        <option value="재질이 좋아요!">재질이 좋아요</option>
                        <option value="디자인이<br>멋져요!">디자인이 멋져요</option>
                        <option value="크기가<br> 적당해요!">크기가 적당해요</option>
                        <option value="고급스러워요!">고급스러워요</option>
                        <option value="무난해요!">무난해요</option>
                        <option value="아쉬워요..">아쉬워요</option>
                        <option value="별로에요..">별로에요</option>
                </select>
            </td>
        </tr>
        <tr>
        <th>별점을 남겨주세요!</th>
        <td>			
        	<fieldset class="starFieldset">
				<input type="radio" name="rating" value="5" id="rate1">
					<label for="rate1">★</label> 
				<input type="radio" name="rating" value="4" id="rate2">
					<label for="rate2">★</label> 
				<input type="radio" name="rating" value="3" id="rate3" checked>
					<label for="rate3">★</label> 
				<input type="radio" name="rating" value="2" id="rate4">
					<label for="rate4">★</label> 
				<input type="radio" name="rating" value="1" id="rate5">
					<label for="rate5">★</label>
			</fieldset>
		</td>
        </tr>
			</table>
			
		<div id="btn_box"> 
			<input type="button" value="돌아가기" id="main" onclick="back()">			
			<button type="button" onclick="submitContents()" id="submitBtn">작성완료</button>
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    	</div>
    </form>
</div>
</body>
	<script>
    	var oEditors = [];
    	nhn.husky.EZCreator.createInIFrame({
    		oAppRef : oEditors,
    		elPlaceHolder : "shopping_content",
    		sSkinURI : "/ex/resources/smarteditor/SmartEditor2Skin.html",
    		fCreator : "createSEditor2"
    	});

    	// ‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
    	function submitContents(elClickedObj) {
    		// 에디터의 내용이 textarea에 적용된다.
    		oEditors.getById["shopping_content"].exec("UPDATE_CONTENTS_FIELD", []);
    		var submitBtn = document.getElementById("submitBtn");
    		var value = document.getElementById("shopping_content").value;
    		console.log(value);
    		submitBtn.form.submit();
    	}
    </script>
</html>