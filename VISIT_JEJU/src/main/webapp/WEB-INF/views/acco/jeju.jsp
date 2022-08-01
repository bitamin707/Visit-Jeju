<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>숙박메인</title>
</head>
<body>
 <!-- ============== 헤더 =============== -->
    <div id="header">
      <div id="container">
          <h1 class="logo">
              <a href="../main/main.html"><img id="img1" src="../../img/main/jeju.png"></a>
          </h1>
          <nav class="menu">
              <ul class="depth">
                  <li><a class="menu_a" href="../acco/jeju.html">숙박</a></li>
                  <li><a class="menu_a" href="../festival/festival.html">축제</a></li>
                  <li><a class="menu_a" href="">쇼핑</a></li>
                  <li><a class="menu_a" href="../tour/main1.html">관광지</a></li>
                  <li><a class="menu_a" href="">음식</a></li>
                  
              </ul>
          </nav>
          <div class="language-wrap">
              <a href="#" id="login">로그인</a>
              <a href="#" id="search">검색</a>
          </div>
          <!--
          <form id="search_Form" action="#">
              <div class="search_open">
                  <div class="input_field">
                      <input type="text" id="search_name" placeholder="검색">
                      <button type="submit" id="search_btn"></button>
                  </div>
              </div>
          </form>
          -->
      </div>
    </div>
<!-- ============== 헤더 =============== -->

  <div class="wrap">
    
    <div class="intro_bg">
        
    </div>
    <!-- 태그부분-->
    <div class="container">
      <div class="intro_text">
        <h1>숙박</h1>
        
      </div>  
      <form>
        <ul class="month">
          <div class="tag1">
            <input id="tag1_수영장" type="checkbox" name="tag" value="수영장" >
            <label for="tag1_수영장" >#수영장</label>
            <input id="tag1_관광호텔" type="checkbox" name="tag" value="관광호텔" >
            <label for="tag1_관광호텔" >#관광호텔</label>
            <input id="tag1_독채" type="checkbox" name="tag" value="독채" >
            <label for="tag1_독채" >#독채</label>
            <input id="tag1_휴양펜션" type="checkbox" name="tag" value="휴양펜션" >
            <label for="tag1_휴양펜션" >#휴양펜션</label>
            <input id="tag1_게스트하우스" type="checkbox" name="tag" value="게스트하우스" >
            <label for="tag1_게스트하우스" >#게스트하우스</label>
            <input id="tag1_가족호텔" type="checkbox" name="tag" value="가족호텔" >
            <label for="tag1_가족호텔" >#가족호텔</label>
            <input id="tag1_와이파이존" type="checkbox" name="tag" value="와이파이존" >
            <label for="tag1_와이파이존" >#와이파이존</label> 
          </div>
          
          
          <div class="regionTag_0" ><h3>지역별 검색</h3>
            제주시>
            <input id="region_0_0" type="checkbox" name="region0" value="11" >
            <label for="region_0_0" >#제주시내</label>
            <input id="region_0_1" type="checkbox" name="region0" value="12" >
            <label for="region_0_1" >#애월</label>
            <input id="region_0_2" type="checkbox" name="region0" value="13" >
            <label for="region_0_2" >#한림</label>
            <input id="region_0_3" type="checkbox" name="region0" value="14" >
            <label for="region_0_3" >#한경</label>
            <input id="region_0_4" type="checkbox" name="region0" value="15" >
            <label for="region_0_4" >#조천</label>
            <input id="region_0_5" type="checkbox" name="region0" value="16" >
            <label for="region_0_5" >#구좌</label>
          </div>
          <div class="regionTag_1">
            서귀포시>
            <input id="region_1_0" type="checkbox" name="region1" value="20" >
            <label for="region_1_0" >#성산</label>
            <input id="region_1_1" type="checkbox" name="region1" value="21" >
            <label for="region_1_1" >#서귀포시내</label>
            <input id="region_1_2" type="checkbox" name="region1" value="22" >
            <label for="region_1_2" >#대정</label>
            <input id="region_1_3" type="checkbox" name="region1" value="23" >
            <label for="region_1_3" >#안덕</label>
            <input id="region_1_4" type="checkbox" name="region1" value="24" >
            <label for="region_1_4" >#중문</label>
            <input id="region_1_5" type="checkbox" name="region1" value="25" >
            <label for="region_1_5" >#남원</label>
            <input id="region_1_6" type="checkbox" name="region1" value="26" >
            <label for="region_1_6" >#표선</label>
            
          </div>
        </ul>
      </form>
                                
      <div class="recommend">
        <div class="order_type" >
          게시물 정렬방법 선택
          <select id="select1" >
            <option value="likecnt" >좋아요순</option>
            <option value="reviewcnt" selected="selected" >리뷰순</option>
            <option value="title_kr" >이름순</option>
          </select>
          <br><br>

          <div class="page" >
            <button class="prev" >이전</button>
            <strong >1</strong> / 1
            <button class="next" >다음</button>
          </div>
        </div>
        <br>
        <hr>
        <div  class="event_area">
          <a href="나미송.html">
            <div id="event_area_img">
              <img src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/202001/21/565e5bb9-1188-479c-b786-555532779d88.jpg" alt="나미송 머무는 곳 대표이미지">
            </div>
            <div class="event_area_text">
              <p  class="s_tit"><strong>나미송 머무는 곳</strong></p>
              <p  class="region">제주시 &gt; 애월</p>
              <p  class="tag"> #민박 #고향민박 #독채   </p>
              <p  class="tag"> #정원 #주방기구 #자연경관</p>
              <p class="like">
                <br><br><br><br>
                <span>좋아요</span>
                <span class="count">23</span>
            
              <span >리뷰</span>
              <span  class="count">146</span>
              </p>
            </div>
          </a>
          
        </div>
        <div  class="event_area">
          <a href="">
            <div id="event_area_img">
              <img src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/12d51464-e140-4dfe-bd71-20e3da85242f.jpg" alt="해비치호텔앤드리조트 대표이미지" >
            </div>
            <div class="event_area_text">
              <p  class="s_tit"><strong>해비치호텔앤드리조트</strong></p>
              <p  class="s_theme">서귀포시 &gt; 표선</p>
              <p  class="tag">#휴식 #5성급호텔 #호텔  </p>
              <p  class="tag">  #숙소 #가족호텔 #와이파이존 <br>#수영장 #관광호텔</p>
              <p class="like">
                <br><br><br>
                <span>좋아요</span>
                <span class="count">14</span>
                <span >리뷰</span>
                <span  class="count">45</span>
              </p>
            </div>
          </a>
        </div>

        <div  class="event_area">
          <a href="">
            <div id="event_area_img">
              <img  src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/a241f8c2-96be-4e68-a5e3-94013927be92.jpg" alt="신라호텔제주 대표이미지" >
            </div>
            <div class="event_area_text">
              <p  class="s_tit"><strong>신라호텔제주</strong></p>
              <p  class="s_theme">서귀포시 &gt; 중문</p>
              <p  class="tag">  #5성급호텔 #숙소 #게스트하우스 #호텔 #와이파이존 #수영장 #관광호텔</p>
              <div class="like">
                <br><br><br>
                <span>좋아요</span>
                <span class="count">7</span>
              
                <span >리뷰</span>
                <span  class="count">43</span>
              </div>
            </div>
          </a>
        </div>


        <div  class="event_area">
          <a href="">
            <div id="event_area_img">
              <img  src="https://api.cdn.visitjeju.net/photomng/thumbnailpath/201804/30/d82adf16-9132-4acd-a6d2-ae3820f2f838.jpg" alt="비젠빌리지 대표이미지" >
            </div>
            <div class="event_area_text">
              <p  class="s_tit"><strong>비젠빌리지</strong></p>
              <p  class="s_theme">제주시 &gt; 구좌</p>
              <p  class="tag">#휴식 #5성급호텔 #호텔  </p>
              <p  class="tag">#휴양펜션 #수영장 #체험#독채 #단체여행객</p>
              <p class="like">
                <br><br><br>
                <span>좋아요</span>
                <span class="count">20</span>
                <span >리뷰</span>
                <span  class="count">38</span>
              </p>
            </div>
          </a>
        </div>
      
      
        
      </div>
    </div>
    
    <footer id="footer">
      <div class="footer_wrap">
          <div class="footer_title">
              <div class="footer_box">
                  <img src="../../img/jeju.png" style="margin-top: 30px;" >
              </div>
          </div>
          <div id="v-line"></div>
          <div class="footer_intro">
              <div class="footer_box">
                  <table class="footer_table">
                      <tr><th>메인</th><td>누구</td><th>숙박</th><td>누구</td></tr>
                      <tr><th>축제</th><td>누구</td><th>쇼핑</th><td>누구</td></tr>
                      <tr><th>관광지</th><td>누구</td><th>음식</th><td>누구</td></tr>
                  </table>
              </div>
          </div>
      </div>
  </footer>
    
  </div>
  

</body>
</html>