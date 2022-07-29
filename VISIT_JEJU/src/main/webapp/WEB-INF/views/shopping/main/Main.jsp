<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  

  
<%@include file="Header.jsp"%>


<body>
    <!-- ============== 헤더 =============== -->
    <div id="header">
        <div id="container">
            <h1 class="logo">
                <img id="img1" src="/ex/resources/img/shopping/jeju.JPG">
            </h1>
            <nav class="menu">
                <ul class="depth">
                    <li><a class="menu_a">여행지</a></li>
                    <li><a class="menu_a">추천</a></li>
                    <li><a class="menu_a">쇼핑</a></li>
                    <li><a class="menu_a">브랜드</a></li>
                    <li><a class="menu_a">여행정보</a></li>
                    <li><a class="menu_a">나의 여행</a></li>
                </ul>
            </nav>
            <div class="language-wrap">
                <a id="login">로그인</a>
                <a id="lang">한국어</a>
                <button type="button" class="btn"></button>
            </div>
        </div>
    </div>
    <!-- ============== 헤더 =============== -->

    <!-- ============== 이미지 =============== -->
    <!-- 이미지부터 페이지 아래쪽까지 class .wrap으로 묶음. 
        width:1280px;    margin: 0 auto; 스타일 통일-->
        
    <!-- ↓↓start class wrap -->
    <div class="wrap"> 
    <section>
        <div class="intro_bg">
            <div class="slideshow-container">

                <div class="mySlides" id="mainSlide">
                  <img src="/ex/resources/img/shopping/bg1.jpg" style="width:100%">
                  <div class="text">1 / 3</div>
                </div>
                
                <div class="mySlides">
                  <img src="/ex/resources/img/shopping/bg2.jpg" style="width:100%">
                  <div class="text">2 / 3</div>
                </div>
                
                <div class="mySlides">
                  <img src="/ex/resources/img/shopping/bg3.jpg" style="width:100%">
                  <div class="text">3 / 3</div>
                </div>
                
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

                <div id="dot_box">
                    <span class="dot" onclick="currentSlide(1)"></span> 
                    <span class="dot" onclick="currentSlide(2)"></span> 
                    <span class="dot" onclick="currentSlide(3)"></span> 
                </div>
                </div>
                <br>

        </div>
    <!-- ============== 이미지 =============== -->

    <!-- ============= 태그 ================ -->
            <ul class="month">
                <p>샴페인 태그: </p>
                <p>빈티지<input type="checkbox" name="tag" value="vintage"></p>
                <p>초고가<input type="checkbox" name="tag" value="priceNess"></p>
                <p>가성비<input type="checkbox" name="tag" value="priceLess"></p>
            </ul>
            <hr>
    <!-- =============== 태그 ============== -->

            <!-- ============== 하단 =============== -->
            <!-- ↓↓start class container -->
            <div class="container">
                <ul class="tab">
                    <li id="tab_1">
                        <a>
                            <strong class="link_fontColor" id="strong_1">1</strong>
                            <span class="link_fontColor">면세점</span>
                            <span class="link_fontColor"> (온라인구매)</span>
                        </a>
                    </li>
                    <li id="tab_2">
                        <a href="Shop_page2.html">
                            <strong class="link_fontColor" style="color:lightblue;">2</strong>
                            <span class="link_fontColor">렌트카</span>
                            <span class="link_fontColor"> (온라인구매)</span>
                        </a>
                    </li>
                </ul>

                <img id="img1" src="/ex/resources/img/shopping/면세점_메인1.JPG">
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
                            <a href="Test">
                                <img src="/ex/resources/img/shopping/술1.jpg" class="product_img"> 
                                <div class="product_name">Champagne Dom Perignon, Vintage 2010</div>   
                            </a>
                            <div class="product_price">24,851,640원
                                <span class="won">(186,00EUR)</span>
                            </div>
                            <!-- Champagne Dom Perignon, Vintage 2010 186,00eur -->
                            <!-- 빈티지, 초고가 -->
                        </div>
                    </span>

                    <span class="tag_priceNess">
                        <div class="product">
                            <a href="product2.html">
                                <img src="/ex/resources/img/shopping/술2.jpg" class="product_img">
                                <div class="product_name">Armand de Brignac CHAMPAGNE BRUT GOLD</div>   
                            </a>
                            <div class="product_price">53,253,330원
                                <span class="won">(398.57EUR)</span>
                            </div>
                            <!-- Armand de Brignac CHAMPAGNE BRUT GOLD eur398.57 -->
                            <!-- 초고가 -->
                        </div>
                    <span class="tag_priceNess">

                    <span class="tag_priceLess">
                    <div class="product">
                        <a href="product3.html">
                            <img src="/ex/resources/img/shopping/술3.jpg" class="product_img">
                            <div class="product_name">Roseblood d'Estoublon 2019 Château Magnum</div>   
                        </a>
                        <div class="product_price">1,650,000원
                            <span class="won">(12,35EUR)</span>
                        </div>
                        <!-- Roseblood d'Estoublon 2019 eur 12,35-->
                        <!-- 가성비    -->
                    </div>
                    </span>

                    <span class="tag_priceLess">
                    <div class="product">
                        <a href="product4.html">
                            <img src="/ex/resources/img/shopping/술8.jpg" class="product_img">
                            <div class="product_name">Egly-Ouriet Brut Tradition Champagne</div>   
                        </a>
                        <div class="product_price">15,385,300원
                            <span class="won">(115,13EUR)</span>
                        </div>
                        <!-- Egly-Ouriet Brut Tradition Champagne Grand Cru 115,13eur -->
                        <!-- 초고가 -->
                    </div>
                    </span>
                    
                    <span class="tag_priceLess">
                    <div class="product" >
                        <a href="">
                            <img src="/ex/resources/img/shopping/술5.jpg" class="product_img">
                            <div class="product_name">CREMANT INDIGENE Domaine Buronfosse </div>   
                        </a>
                        <div class="product_price">4,409,160원
                            <span class="won">(33,00EUR)</span>
                        </div>
                        <!-- CREMANT INDIGENE Domaine Buronfosse eur 33,00 -->
                        <!-- 가성비  -->
                    </div>
                    </span>

                    <span class="tag_priceLess">
                    <div class="product">
                        <a href="">
                            <img src="/ex/resources/img/shopping/술6.jpg" class="product_img">
                            <div class="product_name">Champagne Veuve Clicquot brut Carte Jaune eur</div>   
                        </a>
                        <div class="product_price">7,092,000원
                            <span class="won">(53,08EUR)</span>
                        </div>
                        <!-- Champagne Veuve Clicquot brut Carte Jaune eur 53,08 -->
                        <!-- 가성비  -->
                    </div>
                    </span>

                    <span class="tag_vintage">
                    <div class="product">
                        <a href="">
                            <img src="/ex/resources/img/shopping/술7.jpg" class="product_img">
                            <div class="product_name">Champagne GOSSET Brut Grande Reserve</div>   
                        </a>
                        <div class="product_price">7,015,910원
                            <span class="won">(52,51EUR)</span>
                        </div>
                        <!-- Champagne GOSSET Brut Grande Reserve eur 52,51 -->
                        <!-- 빈티지 -->
                    </div>
                    </span>

                    <span class="tag_priceLess">
                    <div class="product">
                        <a href="">
                            <img src="/ex/resources/img/shopping/술4.jpg" class="product_img">
                            <div class="product_name">Champagne Meot & Chandon Imperial Brut</div>   
                        </a>
                        <div class="product_price">6,413,320원
                            <span class="won">(48,00EUR)</span>
                        </div>
                        <!-- Champagne Meot & Chandon Imperial Brut eur 48,00-->
                        <!-- 가성비 -->
                    </div>
                    </span>

                </div>
                </div>
                <!-- ↑↑end Liquor box -->
                <!-- ============== 주류 제품 =============== -->

                <!-- ============== 명품 제품 =============== -->
                <p class="page_font" style="margin-top:60px; display:inline-block">Luxury Bag</p>
                <button id="btn_more">+ 더보기</button>

                <!-- ↓↓start class Luxury box -->
                <div class="product_box">
                    <!-- ↓↓start id toggle_box1 -->
                    <div id="toggle_box1">
                        <div class="product">
                            <a href="">
                                <img src="/ex/resources/img/shopping/가방1.jpg" class="product_img"> 
                                <div class="product_name">Burberry Medium Soft Canvas Belt Tote Bag</div>   
                            </a>
                            <div class="product_price">1,634,040원
                                <span class="won">(12,22EUR)</span>
                            </div>
                            <!-- 버버리 토트백 1,634,040 https://www.trenbe.com/product/Medium+Soft+Canvas+Belt+Tote+Bag+Blue+80302891+25488552-->
                        </div>

                        <div class="product">
                            <a href="">
                                <img src="/ex/resources/img/shopping/가방2.jpg" class="product_img">
                                <div class="product_name">Saint Laurent Smooth Leather Shoulder Bag</div>   
                            </a>
                            <div class="product_price">4,592,000원
                                <span class="won">(34,36EUR)</span>
                            </div>
                            <!-- 생로랑 스무스레더 숄더백 4,592,000 https://www.trenbe.com/catalogs/75108-->
                        </div>

                        <div class="product">
                            <a href="">
                                <img src="/ex/resources/img/shopping/가방3.jpg" class="product_img">
                                <div class="product_name">Channel Vintage Wild Stitch Tote Bag Calfskin</div>   
                            </a>
                            <div class="product_price">2,000,000원
                                <span class="won">(14,96EUR)</span>
                            </div>
                        <!-- 샤넬 빈티지 스티치 토트백 2,000,000 https://www.trenbe.com/catalogs/229335 -->
                        </div>

                        <div class="product">
                            <a href="">
                                <img src="/ex/resources/img/shopping/가방4.jpg" class="product_img">
                                <div class="product_name">Gucci Blondie Shoulder Bag Prestige</div>   
                            </a>
                            <div class="product_price">3,416,000원
                                <span class="won">(25,56EUR)</span>
                            </div>
                            <!-- 구찌 블론디 숄더백 3,416,000 https://www.trenbe.com/product/Shoulder+bag+with+round+InterlockingG+31377899 -->
                        </div>
                    </div>
                    <!-- ↑↑end class toggle_box1 -->

                    <div class="product">
                        <a href="">
                            <img src="/ex/resources/img/shopping/가방5.jpg" class="product_img">
                            <div class="product_name">GOYARD Plumet Cross Bag Limited Edition</div>   
                        </a>
                        <div class="product_price">1,381,300원
                            <span class="won">(10,33EUR)</span>
                        </div>
                            <!-- 고야드 플뤼메 크로스백 1,381,300 https://www.trenbe.com/catalogs/91422 -->
                    </div>

                    <div class="product">
                        <a href="">
                            <img src="/ex/resources/img/shopping/가방6.jpg" class="product_img">
                            <div class="product_name">Hermes canvas and leather shoulder bag</div>   
                        </a>
                        <div class="product_price">3,800,000원
                            <span class="won">(28,44EUR)</span>
                        </div>
                        <!-- 에르메스 캔버스 레더 숄더백 3,800,000 https://www.trenbe.com/catalogs/229218 -->
                    </div>
                </div>
                <!-- ↑↑end class Luxury box -->
                <!-- ============== 명품 제품 =============== -->

            </div>
            <!-- ↑↑end class container -->
            <!-- =============== 하단 ============== -->
            
            </section>
            
           <%@include file="Footer.jsp"%>
