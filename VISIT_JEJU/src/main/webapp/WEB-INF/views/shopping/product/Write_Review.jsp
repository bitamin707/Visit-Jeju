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
        
    </style>

    <script>

    window.onload = function() {
    	document.getElementById('product_pno').hide();
    }
    
    
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
            location.href = '/ex/shopping/product/list';
        }
        
    </script>
</head>

<body>
    <div id="tbl_box">
    <form action="/ex/shopping/product/Write_Review" method="POST">
			<table border="1" width="1000px" id="customers">

				<tr>
					<th>내 아이디</th>
					<td><input type="text" name=userid required maxlength="15"></td>
				</tr>

				<tr>
					<th>후기 작성</th>
					<td><p><textarea cols="50" rows="4.1" class="post" name="review" maxlength="100" required></textarea></p></td>
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
                </select>
                
                <input type="text" id="recommandInput2" name=recommand2 readonly required>
                    <select onchange="recommandChange2(this)">
                        <option selected disabled>---</option>
                        <option value="코디하기<br>쉬워요!">코디하기 쉬워요</option>
                        <option value="재질이 좋아요!">재질이 좋아요</option>
                        <option value="디자인이<br>멋져요!">디자인이 멋져요</option>
                        <option value="크기가<br> 적당해요!">크기가 적당해요</option>
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