<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                <li>#제주<input type="checkbox" class="jejucbtn" value="제주시내"></li>
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
                    <c:forEach items="${list }" var="foodDto">
                      	  <li>
                            <img src="${foodDto.imglink }" alt="">
                            <h3> <a href="/ex/food/Detail">${foodDto.name }</a>  </h3>                
                            <p>${foodDto.address } </p>
                           
                       	  </li>    
                       	  </c:forEach> 
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