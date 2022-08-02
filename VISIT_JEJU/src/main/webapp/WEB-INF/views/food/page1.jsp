<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/food/style.css">
    <link rel="stylesheet" type="text/css" href="/ex/resources/css/food/styles.css">
    <title>food</title>
   
</head>
<body>

	<!-- ============== 헤더 =============== -->
	<%@include file="../header.jsp" %>
    <!-- ============== 헤더 =============== -->
        
    <!-- ↓↓start class wrap -->
    <div class="wrap"> 
        <div class="intro_bg">
            <img src="/ex/resources/img/food/bg.png" style="width: 100%; height: 100%; position:relative">
            <div class="intro_text">
                <h1>음식</h1>
                <h4>맛집 소개</h4>
            </div>  
        </div>
    <!-- ============== 이미지 =============== -->

    <!-- ============= 태그 ================ -->
            <ul class="month">
                <li>#우도<input type="checkbox" class="wodobtn" value="우도" ></li>
                <li>#애월<input type="checkbox" class="awolbtn" value="애월" ></li>
                <li> #서귀포시<input type="checkbox" class="seobtn" value="서귀포시"  ></li>
                <li>#중문<input type="checkbox" class="jmoonbtn" value="중문" ></li>
                <li>#제주시내<input type="checkbox" class="jejucbtn" value="제주시내"></li>
            </ul>
            
           
            <div class="food">
                <ul>
                    <li><form id="search-form">
                        <input type="text" id="search">
                        <button id="searchBtn">search</button>
                    </form></li>
                </ul>
            </div>
    <!-- =============== 태그 ============== -->
            
            <!-- ============== 하단 =============== -->
            <!-- ↓↓start class event -->
            <section class="sowimage">
                <div class="show">
                    <ul class="showlist">

                    </ul>
                </div>
                <div class="container">
                    <ul class="list">   
                        <li>
                            <img src="/ex/resources/img/food/우도)하하호호.jpg" alt="">
                            <h3> <a href="/ex/food/Detail">하하호호</a>  </h3>                
                            <p>제주특별자치도 제주시 우도면 우도해안길 532 </p>
                           
                       		 </li>
                        
                         <li>
                                <img src="/ex/resources/img/food/애월)봄날.jpg" alt="" >
                                <h3><a href="/ex/food/Detail2">봄날</a></h3>                      
                                <p>제주특별자치도 제주시 애월읍 애월로1길 25</p>
                                 
                        	 </li>
                            
                        <li>
                                <img src="/ex/resources/img/food/바다속 고등어쌈밥.jpg" alt="" >
                                <h3> <a href="/ex/food/Detail3"> 바다속 고등어쌈밥</a></h3>                          
                                <p>제주특별자치도 제주시 애월읍 애월해안로 7089</p>   
                              </li>  
                        <li>
                            <img src="/ex/resources/img/food/우도)섬소나이.jpg" alt="" >
                             <h3> <a href="/ex/food/Detail4"> 섬소나이</a></h3>                    
                                <p> 제주특별자치도 제주시 우도면 우도해안길 814 </p> 
                        	  </li>
                        	  
                        <li>
                            <img src="/ex/resources/img/food/우도)블랑로쉐.jpg" alt="">
                            <h3> <a href="/ex/food/Detail5"> 블랑로쉐</a></h3>
                        
                            <p>제주특별자치도 제주시 우도면 우도해안길 783 </p>     
                        </li>
                        
                            <li>
                                <img src="/ex/resources/img/food/리치망고.jpg" >
                                <h3> <a href="/ex/food/Detail6"> 리치망고</a></h3>                        
                                <p> 제주특별자치도 제주시 애월읍 애월해안로 272</p>   
                            </li>
                           
                
                                  
                    </ul>
                </div>
               <div class="url">
               
                <a href="page1" >1</a>
                <a href="page2" >2</a>
                <a href="page3" >3</a>
               </div>
            </section>
            <!-- =============== 하단 ============== -->
            <%@include file="../footer.jsp" %>
            <!-- =============== 하단 ============== -->

 <script src="/ex/resources/js/food/wodo.js"></script>
 <script src="/ex/resources/js/food/awol.js"></script>
 <script src="/ex/resources/js/food/seo.js"></script>
 <script src="/ex/resources/js/food/jmoon.js"></script>
 <script src="/ex/resources/js/food/jejuc.js"></script>
 <script src="/ex/resources/js/food/search.js"></script>