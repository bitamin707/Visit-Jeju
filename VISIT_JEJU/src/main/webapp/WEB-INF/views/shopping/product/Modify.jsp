<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <title>Document</title>
    <style>
		* {
			font-size:20px;
		}
		    
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
        .btn {
        		margin-left:5%;
				height:30px;
        }
        
    </style>

    <script>
    var result='${keeping}';
    if(result=='success'){
    	alert('세부 수정을 완료하였습니다. 다음 페이지에서 일반사항도 수정이 가능합니다. ');
    }
    
        function categoryInput(e) {
        // 선택된 데이터 가져오기
        const value = e.value;
        // 데이터 출력
        document.getElementById('categoryinput').value
            = value;
        }

        function tagInput(e) {
        // 선택된 데이터 가져오기
        const value = e.value;
        // 데이터 출력
        document.getElementById('taginput').value
            = value;
        }
        
        function goBack() {
        	location.href="/ex/shopping/main/Remocon_bag";
        }
        
    </script>
</head>

<body>
    <div id="tbl_box">
    <form action="/ex/shopping/product/Modify" method="POST">
    <table border="1" width="1000px" id="customers">
        <tr>
            <th>제품 고유번호</th>
            <td><input type="text" name=pno value="${boardDtoShop1.pno }" readonly></td>
        </tr>
        <tr>
            <th>제품 이름</th>
            <td><input type="text" name=product_name value="${boardDtoShop1.product_name }" maxlength="38"></td>
        </tr>
        <tr>
            <th>제품 가격</th>
            <td><input type="text" name=product_price value="${boardDtoShop1.product_price }" maxlength="15"></td>
        </tr>
        <tr>
            <th>제품 원가</th>
            <td><input type="text" name=product_won value="${boardDtoShop1.product_won }" maxlength="10"></td>
        </tr>
        <tr>
            <th>제품 카테고리</th>
            <td>
                <input type="text" id="categoryinput" name=product_category readonly value="${boardDtoShop1.product_category }">
                    <select onchange="categoryInput(this)">
                        <option selected disabled>---</option> 
                            <!-- 옵션에서 기본선택, 선택안되게 설정. -->
                        <option value="champain">샴페인</option>
                        <option value="bag">가방</option>
                    </select>
            </td>
        </tr>
        <tr>
            <th>제품 태그</th>
            <td>
                <input type="text" id="taginput" name=product_tag readonly value="${boardDtoShop1.product_tag }">
                    <select onchange="tagInput(this)">
                        <option selected disabled>---</option>
                        <option value="tag_vintage">빈티지</option>
                        <option value="tag_priceNess">초고가</option>
                        <option value="tag_priceLess">가성비</option>
                        <option value="tag_soso">무난해요~</option>
                </select>
            </td>
        </tr>
    </table>
        <div id="btn_box"> 
		<input type="button" value="수정 그만하기" class="btn" onclick="goBack()">
        <input type="submit" value="추가하기" class="btn">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    	</div>
    </form>
</div>
</body>
</html>