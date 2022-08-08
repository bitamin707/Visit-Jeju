<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@include file="Header.jsp"%>


<body>

	<%@include file="../../header.jsp"%>
	<!-- ============== 헤더 =============== -->

	<!-- ============== 이미지 =============== -->
	<!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->

	<!-- ↓↓start class wrap -->
	<div class="remocon" id="remocon">
		<div class="remoconHead">
			<h2>
				<br>관리자 리모콘
			</h2>
		</div>
		<br> <button>
				<a href="Remocon_bag"><h2>제품 수정</h2></a>
			</button> <br> 		
			<button class="Remocon_bag">
				<a href=""><h2>리뷰 수정</h2></a>
			</button> 
			<button>
				<a href=""><h2>상품</h2></a>
			</button>
	</div>
	<div class="wrap">
		<section style="margin-bottom: 100px;">
			<div class="intro_bg">
				<div class="slideshow-container">

					<div class="mySlides" id="mainSlide">
						<img src="/ex/resources/img/shopping/bg1.jpg" style="width: 100%">
						<div class="text">1 / 3</div>
					</div>

					<div class="mySlides">
						<img src="/ex/resources/img/shopping/bg2.jpg" style="width: 100%">
						<div class="text">2 / 3</div>
					</div>

					<div class="mySlides">
						<img src="/ex/resources/img/shopping/bg3.jpg" style="width: 100%">
						<div class="text">3 / 3</div>
					</div>

					<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
						class="next" onclick="plusSlides(1)">&#10095;</a>

					<div id="dot_box">
						<span class="dot" onclick="currentSlide(1)"></span> <span
							class="dot" onclick="currentSlide(2)"></span> <span class="dot"
							onclick="currentSlide(3)"></span>
					</div>
				</div>
				<br>

			</div>
			<!-- ============== 이미지 =============== -->

			<!-- ============= 태그 ================ -->
			<ul class="month">
				<p>샴페인 태그:</p>
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
							class="link_fontColor" style="color: lightblue;">2</strong> <span
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

						<span class="tag_vintage">
							<div class="product">
								<a href="../product/product"> 
								<div class="coverIt">제품 상세보기</div> 
								<img class="product_img"
									src="/ex/resources/img/shopping/술1.jpg">
									<div class="product_name">Champagne Dom Perignon, Vintage
										2010</div>
								</a>
								<div class="product_price">
									24,851,640원 <span class="won">(186,00EUR)</span>
								</div>
								<!-- Champagne Dom Perignon, Vintage 2010 186,00eur -->
								<!-- 빈티지, 초고가 -->
							</div>
						</span> <span class="tag_priceNess">
							<div class="product">
								<a href="product2.html"> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
										src="/ex/resources/img/shopping/술2.jpg">
									<div class="product_name">Armand de Brignac CHAMPAGNE
										BRUT GOLD</div>
								</a>
								<div class="product_price">
									53,253,330원 <span class="won">(398.57EUR)</span>
								</div>
								<!-- Armand de Brignac CHAMPAGNE BRUT GOLD eur398.57 -->
								<!-- 초고가 -->
							</div>
						</span> <span class="tag_priceNess">
							<div class="product">
								<a href="product3.html"> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
									src="/ex/resources/img/shopping/술3.jpg">
									<div class="product_name">Roseblood d'Estoublon 2019
										Château Magnum</div>
								</a>
								<div class="product_price">
									1,650,000원 <span class="won">(12,35EUR)</span>
								</div>
								<!-- Roseblood d'Estoublon 2019 eur 12,35-->
								<!-- 가성비    -->
							</div>
						</span> <span class="tag_priceLess">
							<div class="product">
								<a href="product4.html"> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
									src="/ex/resources/img/shopping/술8.jpg">
									<div class="product_name">Egly-Ouriet Brut Tradition
										Champagne</div>
								</a>
								<div class="product_price">
									15,385,300원 <span class="won">(115,13EUR)</span>
								</div>
								<!-- Egly-Ouriet Brut Tradition Champagne Grand Cru 115,13eur -->
								<!-- 초고가 -->
							</div>
						</span> <span class="tag_priceLess">
							<div class="product">
								<a href=""> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
									src="/ex/resources/img/shopping/술5.jpg">
									<div class="product_name">CREMANT INDIGENE Domaine
										Buronfosse</div>
								</a>
								<div class="product_price">
									4,409,160원 <span class="won">(33,00EUR)</span>
								</div>
								<!-- CREMANT INDIGENE Domaine Buronfosse eur 33,00 -->
								<!-- 가성비  -->
							</div>
						</span> <span class="tag_priceLess">
							<div class="product">
								<a href=""> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
									src="/ex/resources/img/shopping/술6.jpg">
									<div class="product_name">Champagne Veuve Clicquot brut
										Carte Jaune eur</div>
								</a>
								<div class="product_price">
									7,092,000원 <span class="won">(53,08EUR)</span>
								</div>
								<!-- Champagne Veuve Clicquot brut Carte Jaune eur 53,08 -->
								<!-- 가성비  -->
							</div>
						</span> <span class="tag_vintage">
							<div class="product">
								<a href=""> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
									src="/ex/resources/img/shopping/술7.jpg">
									<div class="product_name">Champagne GOSSET Brut Grande
										Reserve</div>
								</a>
								<div class="product_price">
									7,015,910원 <span class="won">(52,51EUR)</span>
								</div>
								<!-- Champagne GOSSET Brut Grande Reserve eur 52,51 -->
								<!-- 빈티지 -->
							</div>
						</span> <span class="tag_soso">
							<div class="product">
								<a href=""> 
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
									src="/ex/resources/img/shopping/술4.jpg">
									<div class="product_name">Champagne Meot & Chandon
										Imperial Brut</div>
								</a>
								<div class="product_price">
									6,413,320원 <span class="won">(48,00EUR)</span>
								</div>
								<!-- Champagne Meot & Chandon Imperial Brut eur 48,00-->
								<!-- 무난해요~ -->
							</div>
						</span>
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
								<span class="${boardDto.product_tag }">
									<div class="product">
										<a href='/ex/shopping/product/Product?pno=${boardDto.pno }'>
									<div class="coverIt">제품 상세보기</div> 
									<img class="product_img"
											src="/ex/resources/img/shopping/${boardDto.product_img }">
											<div class="product_name">${boardDto.product_name }</div>
										</a>
										<div class="product_price">
											${boardDto.product_price }원 <span class="won">(${boardDto.product_won }EUR)</span>
										</div>
										<!-- 버버리 토트백 1,634,040 https://www.trenbe.com/product/Medium+Soft+Canvas+Belt+Tote+Bag+Blue+80302891+25488552-->
									</div>
								</span>
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