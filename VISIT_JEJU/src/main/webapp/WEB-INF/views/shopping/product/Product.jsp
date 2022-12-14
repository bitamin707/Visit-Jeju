<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/shopping/Product.css?after">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/shopping/Product_Review.css?after"> 
    <script type="text/javascript" src="/ex/resources/js/shopping/product.js"/></script>
    
    <title>쇼핑몰_술</title>
    <script>
    
    <!-- JS 문서에 따로 두면 값을 못 가져와서 여기에 둠 -->
    
    $(document).ready(function(){
  	  $('#searchBtn').on("click",function(event){
  		  alert("Product"+'${pageMaker.makePage(1)}'
  				  +'&searchType='+$("select option:selected").val()
  				  +"&keyword="+$('#keywordInput').val());
  		  
  		  self.location="Product"+'${pageMaker.makePage(1)}'
  		  +'&searchType='+$("select option:selected").val()
  		  +"&keyword="+$('#keywordInput').val()
  		  +"&pno="+"${boardDtoShop1.pno }"
  		  +"#board_main";
  		  
  		document.getElementById('#board_main').scrollintoview();
  	  })
  	  
  	  $('#writeBtn').on("click",function(event){
  		  location.href="/ex/shopping/product/Write_Review?"
  		  + 'pno=' + '${boardDtoShop1.pno }'; 		
  	  })
  	    		  
    });
    
    
   	window.onload = function() {
        let rate = "rate";
        let thisRate;
        let thisRateLength;

        thisRateLength = document.getElementsByClassName('thisRate');

        for (let j = 0; j < thisRateLength.length; j++) {
            thisRate = parseInt(document.getElementsByClassName('thisRate')[j].value);


            for (let i=1; i<thisRate+1; i++) {
            rate += i;
            document.getElementsByClassName(rate)[j].style.color = "#dd9309";
            rate = "rate";
        }

        }
        
        
		var remove_btn = document.getElementsByClassName("remove_btn")
		var check = "${Check}"
		
		if (check == "showBasket") {
			for(let i = 0; i < remove_btn.length; i++)
				remove_btn[i].style.display = "";
		} else {
			for(let i = 0; i < remove_btn.length; i++)
				remove_btn[i].style.display = "none";
		}
		
		
			price = document.getElementById("share").innerHTML;
			document.getElementById("stock_price").value = price;
			
			product_max_qty = document.getElementById("product_max_qty").value;
			max_qty = product_max_qty;
   	}
    </script>
</head>
<body>
    <!-- ============== 헤더 =============== -->
			<%@include file="../../header.jsp"%>
    <!-- ============== 헤더 =============== -->
        <!-- ↓↓start class wrap -->
        <div class="wrap"> 
            <div class="info_header">
                <h6 class="page_font">Premium Liquor.</h6>
            </div>

            <ul class="back">
                <li style="display:inline-block"><a href="/ex/shopping/main/Main" id="home">Home</a> > </li>
                <li style="display:inline-block"><a>${boardDtoShop1.product_category }</a></li>
            </ul>

    <!-- ============== 제품 상단 =============== -->
            <!-- ↓↓start id container -->
            <!-- 1280x706 -->
            <div class="content_box">

                <!-- ======= 왼쪽 공간 ======= -->
                <!-- 607x569 -->
                <div class="product_col" href="javascript:test()">
                    <div class="mySlides" id="mainSlide">
                        <img src="/ex/resources/img/shopping/${boardDtoShop1.product_img }" style="width:100%; height:100%;">
                    </div>
            
                    <div class="mySlides">
                        <img src="/ex/resources/img/shopping/이미지선택.gif" style="width: 100%">
                    </div>
            
                    <a class="prev" onclick="plusSlides(-1)">&#10094;</a> 
                    <a class="next" onclick="plusSlides(1)">&#10095;</a>
                </div>
                <!-- 600x120 -->
                <div class="product_row">
                    <div class="row_box">
                            <img src="/ex/resources/img/shopping/${boardDtoShop1.product_img }" class="dot" onclick="currentSlide(1)" style="width:70px; height:70px">
                            <img src="/ex/resources/img/shopping/이미지선택.gif" class="dot" onclick="currentSlide(2)" style="width:70px; height:70px">
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
                        <span id="price">
                        <span style="font-size:22px;">${boardDtoShop1.product_price }원</span>
                        </span>
						<span id="share_2"> EUR</span>
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
                        <p>최대 구매수량 ${boardDtoShop1.product_max_qty }</p>
                        <p>1인당 최대 구매수량 ${boardDtoShop1.product_max_qty }</p>
                        <input type=hidden id="product_max_qty" value="${boardDtoShop1.product_max_qty }">
                    </div>

                    <div id="product_stock">
                        수량
                    <form id="frm" action="/ex/shopping/main/MakeBasket">
                    
                        <hr style="margin: 15px auto">
                        <div class="option_btn">
                            <a href="javascript:minus_qty('a')">-</a>                        
                            <a href="javascript:plus_qty('b')">+</a>
                            <input type="text" id="stock" value="1" readonly="readonly" name="stock">
                        </div>
                        <div class="option_btn_price">
                            <input type="text" id="stock_price" value="1" readonly="readonly" name="product_total_won">
                            <span>EUR</span>
                        </div>
                    </div>

                    <div id="product_buy">
                        <div id="doBuy">품절된 상품입니다.</div>
                        <input type="hidden" value="${boardDtoShop1.pno }" name="pno">
                        <div id="doFav" onclick="document.getElementById('frm').submit();">장바구니</div>
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    </div>
                    </form>
                    
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
                        <div id="detail" onclick="detail()">상품정보</div> / 
                        <div id="review" onclick="review()">상품평</div>
                    </div>
                </div>

                <div id="info_img">
                    <img src="/ex/resources/img/shopping/제품안내1.png" class="info_images">
                    <img src="/ex/resources/img/shopping/제품안내2.png" class="info_images">

                    <div id="board_main">
		<h2 class="review_board">구매자 상품 후기</h2>
		<h5 class="review_board_menu">일반 리뷰(${pageMaker.totalCount})</h5>
		<h5 class="review_board_menu">포토 리뷰(0)</h5>
		<h5 style="display: inline-block; margin: 10px auto 20px 2%;">
			<span class="review_board_menu2"> Event</span> <span
				class="review_event">스타일후기 작성 시 2,000원의 적립금을 드립니다.</span>
		</h5>
		
		
		<div class="review_button">		

		
			<select name="searchType">
				<option value="n"
					<c:out value="${pageMaker.searchType==null?'selected':'' }"/>>전체</option>
				<!-- <option value="n" selected>----</option>
                  <option value="n">----</option> -->
				<option value="t"
					<c:out value="${pageMaker.searchType eq 't'?'selected':'' }"/>>제품이름</option>
				<option value="c"
					<c:out value="${pageMaker.searchType eq 'c'?'selected':'' }"/>>추천</option>
				<option value="w"
					<c:out value="${pageMaker.searchType eq 'w'?'selected':'' }"/>>유저아이디</option>
			</select> 
							
			<input type="text" name="keyword" id="keywordInput"
				value="${pageMaker.keyword}">
				
				
			<button id="searchBtn">검색하기</button>
				
			<c:if test="${Check eq 'showBasket'}">
				<button id="writeBtn" style="float: right;" >
				글쓰기
				</button>
			</c:if>
				
					
		</div>

		<table class=customers width=100% border="1">
			<tr>
				<th style="width: 20%">제품</th>
				<th style="width: 50%">구매자들의 후기 보기~</th>
				<th style="width: 15%">추천해요</th>
				<th style="width: 15%">고객ID</th>
			</tr>

			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.what_product } 
						<br>
						<br>
						<input type="hidden" class="thisRate" value="${dto.rating }">
					    <fieldset class="starFieldset">
					            <label class="rate5">★</label>
					            <label class="rate4">★</label> 
					            <label class="rate3">★</label> 
					            <label class="rate2">★</label> 
					            <label class="rate1">★</label> 
					    </fieldset></td>
					<td>${dto.review }</td>
					<td>
						<p>${dto.recommand } <br><br>
							${dto.recommand2 }</p>
					</td>
					<td>
					<p class="userName">${dto.userid } </p>
					<br>
					<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${dto.regdate }" />
						<button class="remove_btn" onclick="removeIt(${dto.bno }, ${boardDtoShop1.pno })">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</table>

		<!-- 페이지 버튼을 만드는 공간이다. -->
		<div class="pagination">
			<div class="pagination_btn">

				<!-- 현재 페이지가 1이 아니면 <<를 보여준다. 클릭하면 강제로 1페이지로 이동 -->
				<!-- << -->
				<c:if test="${pageMaker.page !=1}">
					<a href='Product${pageMaker.makeSearch(1)}&pno=${boardDtoShop1.pno }' onclick="review()">&laquo;</a>
				</c:if>

				<!-- 현재  startPage 11~20 endPage 이라면,
               버튼은 TRUE값이 되며 누를시에 10페이지로 넘어간다. -->
				<!-- < -->
				<c:if test="${pageMaker.prev }">
					<a href='Product${pageMaker.makeSearch(pageMaker.startPage-1)}&pno=${boardDtoShop1.pno }' >&lt;</a>
				</c:if>

				<!-- start,end 페이지를 forEach로 출력. 11~20 -->
				<c:forEach begin="${pageMaker.startPage }"
					end="${ pageMaker.endPage}" var="idx">
					<!-- 현재 페이지와 idx값이 같다면 클래스 이름을 정해주고 css 스타일을 부여합니다. -->
					<a href='Product${pageMaker.makeSearch(idx)}&pno=${boardDtoShop1.pno }'
						<c:out value="${pageMaker.page==idx?' class=active ':'' }"/>>
						${idx}</a>
				</c:forEach>


				<%--<a href='#'>1</a>
               <a href='list${pageMaker.makeSearch(2)}'>2</a>
              <a href='#' class="active">3</a> --%>


				<!-- <를 누를시, 현재 11~20페이지를 보여준다면, 21페이지로 넘어간다. -->
				<!-- > -->
				<c:if test="${pageMaker.next }">
					<a href='Product${pageMaker.makeSearch(pageMaker.endPage+1)}&pno=${boardDtoShop1.pno }'>&gt;</a>

				</c:if>

				<!-- 현재 페이지가 데이터 마지막이 아니면 >>를 보여준다. 클릭하면 강제로 totalEndPage로 이동 -->
				<!-- >> -->
				<c:if test="${pageMaker.page != pageMaker.totalEndPage}">
					<a href='Product${pageMaker.makeSearch(pageMaker.totalEndPage) }&pno=${boardDtoShop1.pno }'>&raquo;</a>
				</c:if>

			</div>
		</div>
		<!-- 페이지 버튼을 만드는 공간이다. -->

	</div>
                </div>
            </div>
            <!-- ↑↑end id container_info -->
    <!-- ============== 리뷰 =============== -->
		
	<%@include file="../../footer.jsp"%>	
</body>
</html>