<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Document</title>

    <style>
    
		#img1 {
			vertical-align: middle;
		}


		* {
			box-sizing: border-box;
		    border-collapse: collapse;
		    margin: 0px;
		    padding: 0px;
		}

        #basket_block {
            width:1070px;
            border:2px solid rgb(198, 198, 198);
            margin: 170px auto 30px auto;
        }
        #basket_main {
            border: 2px solid rgb(198, 198, 198);
            padding: 20px;
            margin: 10px auto;
            width:1000px;
        }
        
        
        .back {
		    width:300px;
		    height: 40px;
		    border:1px solid w;
		    list-style: none;
		    padding: 7px 0 0 15px;
		    margin:3px 0;
		}
		#home:hover {
		    color:orange;
		}
		        
        
        #basket_main > h2 {
            margin-bottom: 30px;
            font-size: 24px;
        }

        #tbl td {
            border:0.5px solid rgb(140, 140, 140);
            text-align: center;
            vertical-align: middle;       
        }
        #tbl th {
        	height:50px;
            border:0.5px solid rgb(140, 140, 140);
            text-align: center;
            vertical-align: middle;
        }
		
		#tbl tr {
			background-color: #fbfbfb;
		}
        td:nth-child(1){
            width:10%;
            height:100px;
        }
        #tbl td:nth-child(2){
            width:15%;
            border-right:1px solid white;
        }
        td:nth-child(3){
        	position: relative;
            width:30%;
            padding:auto;
        }
        td:nth-child(4){
            width:15%;
        }
        td:nth-child(5){
            width:15%;
        }
        td:nth-child(6){
            width:15%;
        }

        ul li {
            font-size:14px;
        }

        .buyIt_box {
            text-align: center;
        }
        .buyIt {
            font-size: 20px;
            font-weight: 550;
            padding:10px;
            width:250px;
            border: 1px solid #212121;
            background-color: #212121;
            color:white;
        }
        
        #basket_img {
        	width:110px;
        	height:110px;
        	float:right;
        }
        
        .finalTotalPrice {
        	font-size:20px;
        	font-weight:740px;
        	margin-left: 740px;
        	margin-top:40px;        
        }

    </style>
    
    <script>
    function test() {
        document.getElementById('fcs').scrollIntoView();
    }
    
    var result='${nice}';
    if(result=='success'){
    	alert('해당 제품을 장바구니에서 제거했습니다.');
    }
    
	
    $(document).ready(function(){
    let finalTotalPrice = 0;

    $(".cart_info_td").each(function(index, element){
        finalTotalPrice += parseInt($(element).find(".totalPrice_input").val());
        
    });

    $(".finalTotalPrice_span").text(finalTotalPrice);
    
    })
    
	</script>

</head>

<body>
	<%@include file="../../header.jsp"%>
	<div class="wrap">
	<section style="margin-bottom: 100px;">
            
    <div id="basket_block">
    		<ul class="back">
            <li style="display:inline-block"><a href="/ex/shopping/main/Main" id="home">Home</a> > </li>
        	<li style="display:inline-block"><a>장바구니</a></li>
        </ul>
    <div id="basket_main">
        <h2>${user.nickname }님 장바구니</h2>


        <br>
        <table id="tbl" style="width:950px;" cellspacing="-10px">
            <tr>
                <th cellsp>취소</th>
                <th colspan="2">상품명</th>
                <th>가격</th>
                <th>수량</th>
                <th>주문금액</th>
            </tr>    
            <tr>	
            <c:forEach items="${list }" var="boardDto">
                <td><a href="/ex/shopping/main/DeleteBasket?pno=${boardDto.pno }"> X </a></td>
                <td>
                	<img id="basket_img" src="/ex/resources/img/shopping/${boardDto.product_img }">
                </td>              
                <td>${boardDto.product_name }</td>
                <td ><fmt:formatNumber value="${boardDto.product_won }" pattern="#,###"/> eur</td>
                <td >${boardDto.stock }</td>
                <td><fmt:formatNumber value="${boardDto.product_total_won }" pattern="#,###"/> eur</td>
                
                <td class="cart_info_td">
                	<input type=hidden class="totalPrice_input" value="${boardDto.product_total_won }">
                </td>                
            </tr>
            </c:forEach>
        </table>
        <div class="finalTotalPrice">총 금액: <span class=finalTotalPrice_span></span> EUR</div>
    </div>
    <br>
    <ul style="padding-left:50px;">
        <li>저희는 배송 서비스를 제공하지 않습니다.</li>
        <li>구매 후 직접 매장에 방문하셔서 제품을 수령해 주시기 바랍니다.</li>
        <li>21일 이내에 수령하지 않을 시 구매가 철회되며 고객님의 계좌번호로 자동 재입금 됩니다.</li>
        <li>특별한 사유가 없다면 환불 처리되지 않습니다. 자세한 사항은 고객 문의센터로 연락 바랍니다.</li>
    </ul>
    <br><br>
	    <div class="buyIt_box">
	    	<button class="buyIt">구매하기</button>
	    </div>
    <br><br>
</div>
</section>

	<%@include file="../../footer.jsp"%>	
</body>
</html>
