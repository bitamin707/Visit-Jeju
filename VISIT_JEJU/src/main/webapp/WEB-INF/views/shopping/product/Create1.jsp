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
        
    </style>

    <script>
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
        
        function back() {
            location.href = '/ex/shopping/main/Remocon_bag';
        }
        
    </script>
</head>

<body>
    <div id="tbl_box">
    <form action="/ex/shopping/product/Create1" method="post">
    <table border="1" width="1000px" id="customers">
        <tr>
            <th>제품 고유번호 (6자리)</th>
            <td><input type="text" name=pno required maxlength="6"></td>
        </tr>
        <tr>
            <th>제품 이름</th>
            <td><input type="text" name=product_name required></td>
        </tr>
        <tr>
            <th>제품 가격</th>
            <td><input type="text" name=product_price required></td>
        </tr>
        <tr>
            <th>제품 원가</th>
            <td><input type="text" name=product_won required></td>
        </tr>
        <tr>
            <th>제품 카테고리</th>
            <td>
                <input type="text" id="categoryinput" name=product_category readonly required>
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
                <input type="text" id="taginput" name=product_tag readonly required>
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
		<input type="button" value="돌아가기" id="main" onclick="back()">
        <input type="submit" value="추가하기">
    	</div>
    </form>
</div>
</body>
</html>