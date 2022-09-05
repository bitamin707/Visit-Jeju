<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="Header.jsp"%>


<body>

	<%@include file="../../header.jsp"%>
	<!-- ============== 헤더 =============== -->

	<!-- ============== 이미지 =============== -->
	<!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->
	<div class="remocon" id="remocon">
		<div class="remoconHead">
			<h2>
				<br>관리자 리모콘
			</h2>
		</div>
		<br>
		<button>
			<a href="Remocon_bag"><h2>제품 수정</h2></a>
		</button>
		<br>
		<button class="Remocon_bag">
			<a href="Rating"><h2>판매량 측정</h2></a>
		</button>
	</div>

	<div class="intro_bg">
		<div class="slideshow-container">

			<div class="mySlides" id="mainSlide">
				<img src="/ex/resources/img/shopping/bg1.jpg" style="width: 100%">
				<div class="imgtext_box">	
					<p class="imgtext">Jeju Duty Free 1F</p>
					<p class="imgtext2">Accessories</p>
				</div>
			</div>

			<div class="mySlides">
				<img src="/ex/resources/img/shopping/bg2.jpg" style="width: 100%">
				<div class="imgtext_box">	
					<p class="imgtext">Jeju Duty Free 1F</p>
					<p class="imgtext2">-Brand Bags</p>
				</div>
			</div>

			<div class="mySlides">
				<img src="/ex/resources/img/shopping/bg3.jpg" style="width: 100%">
				<div class="imgtext_box">	
					<p class="imgtext">Jeju Duty Free 2F</p>
					<p class="imgtext2">-Men's shop</p>
				</div>
			</div>
			
			<div class="mySlides">
				<img src="/ex/resources/img/shopping/bg4.jpg" style="width: 100%">
				<div class="imgtext_box">	
					<p class="imgtext">Jeju Duty Free 2F</p>
					<p class="imgtext2">-Women's shop</p>
				</div>
			</div>

			<div id="dot_box">
				<span class="dot" onclick="currentSlide(1)" /> 
				<span class="dot" onclick="currentSlide(2)" />
				<span class="dot" onclick="currentSlide(3)" />
				<span class="dot" onclick="currentSlide(4)" />
			</div>
		</div>
		<br>

		<script>
        window.onload=function(){
            var remocon = document.getElementsByClassName("remocon");
    		var check = "${Check}"
    		
    			if (check == "showBasket") {
    				for(let i = 0; i < remocon.length; i++)
    					remocon[i].style.display = "";
    			} else {
    				for(let i = 0; i < remocon.length; i++)
    					remocon[i].style.display = "none";
    			}
        }
		
		
		let slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  let i;
		  let slides = document.getElementsByClassName("mySlides");
		  let dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 4000); // Change image every 2 seconds
		}
		</script>

	</div>
	<!-- ============== 이미지 =============== -->
	
	<!-- ↓↓start class wrap -->
	<div class="wrap">
		<section style="margin-bottom: 100px;">
			<!-- ============= 태그 ================ -->
			<ul class="month">
				<p>상품 태그:</p>
				<p>
					빈티지<input type="checkbox" name="tag" value="vintage">
				</p>
				<p>
					초고가<input type="checkbox" name="tag" value="priceNess">
				</p>
				<p>
					가성비<input type="checkbox" name="tag" value="priceLess">
				</p>
				<p>
					무난해요~<input type="checkbox" name="tag" value="soso">
				</p>
			</ul>
			<hr>

			<!-- ↓↓start class container -->
			<div class="container">
				<ul class="tab">
					<li id="tab_1"><a> <strong class="link_fontColor"
							id="strong_1">1</strong> <span class="link_fontColor">면세점</span>
							<span class="link_fontColor"> (온라인구매)</span>
					</a></li>
					<li id="tab_2"><a href="Shop_page2.html"> <strong
							class="link_fontColor" style="color: #8f8f8f;">2</strong> <span
							class="link_fontColor">렌트카</span> <span class="link_fontColor">
								(온라인구매)</span>
					</a></li>
				</ul>

				<img id="img_detail" src="/ex/resources/img/shopping/면세점_메인1.JPG">
				<div id="img_box">
					<img id="img2" src="/ex/resources/img/shopping/면세점_메인2.JPG">
					<img class="img3" src="/ex/resources/img/shopping/면세점_메인3.png">
					<img class="img4" src="/ex/resources/img/shopping/면세점_메인4.png">
				</div>

				<!-- ============== 주류 제품 =============== -->
				<p class="page_font">Liquor</p>
				<!-- ↓↓start class Liquor box -->
				<div class="product_box">
					<div id="wine">

						<c:forEach items="${list }" var="boardDto">
							<c:if test="${boardDto.product_category eq 'champain'}">
								<span class="${boardDto.product_tag }">
									<div class="product">
										<a href='/ex/shopping/product/Product?pno=${boardDto.pno }'>
											<div class="coverIt">제품 상세보기</div> <img class="product_img"
											src="/ex/resources/img/shopping/${boardDto.product_img }">
											<div class="product_name">${boardDto.product_name }</div>
										</a>
										<div class="product_price">
											<fmt:formatNumber value="${boardDto.product_price }"
												pattern="#,###" />
											원 <span class="won">(<fmt:formatNumber
													value="${boardDto.product_won }" pattern="" />EUR)
											</span>
										</div>
									</div>
								</span>
							</c:if>
						</c:forEach>

					</div>
				</div>
				<!-- ↑↑end Liquor box -->
				<!-- ============== 주류 제품 =============== -->

				<!-- ============== 명품 제품 =============== -->
				<p class="page_font" style="margin-top: 60px; display: inline-block">Luxury
					Bag</p>
				<button id="btn_more">+ 더보기</button>

				<!-- ↓↓start class Luxury box -->
				<div class="product_box">
					<div id="wine">
						<!-- ↓↓start id toggle_box1 -->
						<div id="toggle_box1">

							<c:forEach items="${list }" var="boardDto">
								<c:if test="${boardDto.product_category eq 'bag'}">
									<span class="${boardDto.product_tag }">
										<div class="product">
											<a href='/ex/shopping/product/Product?pno=${boardDto.pno }'>
												<div class="coverIt">제품 상세보기</div> <img class="product_img"
												src="/ex/resources/img/shopping/${boardDto.product_img }">
												<div class="product_name">${boardDto.product_name }</div>
											</a>
											<div class="product_price">
												<fmt:formatNumber value="${boardDto.product_price }"
													pattern="#,###" />
												원 <span class="won">(<fmt:formatNumber
														value="${boardDto.product_won }" pattern="" />EUR)
												</span>
											</div>
										</div>
									</span>
								</c:if>
								<!-- 
								Champagne Dom Perignon, Vintage 2010
								250130
								186
								limited
								돔페리뇽은 그 해 재배된 독특한 개성을 해석해 최상급 포도로만 제조합니다. 최소 8년에 걸친 창조의 과정 끝에 완벽한 균형을 실현한 맛을 느껴보세요. 
								최대수량 2
								술1.jpg
								-->
							</c:forEach>

						</div>
						<!-- ↑↑end class toggle_box1 -->

					</div>
				</div>
				<!-- ↑↑end class Luxury box -->
				<!-- ============== 명품 제품 =============== -->

			</div>
			<!-- ↑↑end class container -->
			<!-- =============== 하단 ============== -->

		</section>

		<%@include file="../../footer.jsp"%>