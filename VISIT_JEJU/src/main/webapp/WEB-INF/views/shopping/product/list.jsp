<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Document</title>
<style>
* {
	box-sizing: border-box;
	font-size: 18px;
}

h5 {
	display: inline-block;
	margin-left: 2%;
}

/* Style the body */
body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

/* Header/logo Title */
.header {
	padding: 80px;
	text-align: center;
	background: #1abc9c;
	color: white;
}

/* Increase the font size of the heading */
.header h1 {
	font-size: 40px;
}

.review_board {
	font-size: 23px;
	margin-left: 2%;
}

.review_board_menu {
	margin: -5px 0px 20px 2%;
	font-size: 21px;
}

.review_board_menu2 {
	border: 3px solid skyblue;
	color: rgb(86, 188, 228);
	padding: 3px;
	font-size: 11px;
}

.review_event {
	font-size: 15px;
	color: rgb(105, 105, 105);
}

.review_button {
	margin-top: 3px;
	margin-bottom: 15px;
}

.review_button>select, input, button {
	margin-right: 10px;
}

#newBtn, #searchBtn {
	background-color: #fafafa;
	border: 1.5px solid #cc880a;
	border-radius: 5px;
	color: #c28616;
	font-weight: 700;
	padding: 3px;
	cursor: pointer;
	margin-right: 20px;
	margin-top: 10px;
}

/* Style the top navigation bar */
.navbar {
	overflow: hidden;
	background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
	float: right;
}

/* Change color on hover */
.navbar a:hover {
	background-color: #ddd;
	color: black;
}

/* Column container */
.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
	-ms-flex: 30%; /* IE10 */
	flex: 30%;
	background-color: #f1f1f1;
	padding: 20px;
}

/* Main column */
.board_main {
	border: 1px solid black;
	position: relative;
	-ms-flex: 70%; /* IE10 */
	flex: 70%;
	background-color: white;
	padding: 20px;
}

/* Fake image, just for this example */
.fakeimg {
	background-color: #aaa;
	width: 100%;
	padding: 20px;
}

/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px) {
	.row {
		flex-direction: column;
	}
}

/* Responsive layout when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
	.navbar a {
		float: none;
		width: 100%;
	}
}

/* table css*/
.customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

.customers td, .customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

td:nth-child(1) {
	text-align: left;
	font-weight: 720;
	vertical-align: middle;
	height: 200px;
}

td:nth-child(2) {
	text-align: left;
	vertical-align: top;
}

td:nth-child(3) p {
	border: 1px solid #dd9309;
	border-radius: 15px;
	padding: 5px;
	margin: 3px auto;
}

td {
	text-align: center;
	vertical-align: middle;
	position: relative;
}

#remove_btn {
	position: absolute;
	bottom: 0px;
	right: 0px;
}

.customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

.customers tr:hover {
	background-color: #ddd;
}

.customers th {
	padding-top: 15px;
	padding-bottom: 15px;
	text-align: left;
	background-color: #dd9309;
	color: white;
}

/*pagination*/
.pagination {
	text-align: center;
	margin: 10px auto;
}

.pagination_btn {
	display: inline-block;
}

.pagination a {
	border-radius: 5px;
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
}

.pagination a.active {
	border-radius: 5px;
	background-color: #dd9309;
	color: white;
	border: 1px solid #dd9309;
}

.pagination a:hover:not (.active ) {
	background-color: #ddd;
}
</style>

<script>
var result='${remove}';
if(result=='success'){
	alert('리뷰를 삭제했습니다.');
}
var result='${write}';
if(result=='success'){
	alert('해당 제품의 리뷰를 작성했습니다.');
}
	
  $(document).ready(function(){
	  $('#searchBtn').on("click",function(event){
		  alert("list"+'${pageMaker.makePage(1)}'
				  +'&searchType='+$("select option:selected").val()
				  +"&keyword="+$('#keywordInput').val());
		  
		  self.location="list"+'${pageMaker.makePage(1)}'
		  +'&searchType='+$("select option:selected").val()
		  +"&keyword="+$('#keywordInput').val();
		  
	  })
	  // 검색 버튼을 눌렀을 때, 카테고리, 검색어 등등의 밸류값을 전송합니다.
	  // PageMaker에서 setter로 받습니다.
	  // pageMaker문서의 makePage를 참조하세요.
	  // 쿼리스트링으로 값이 바뀐 PageMaker를 컨트롤러에서 받아와 전송합니다.
	  
	  $('#writeBtn').on("click",function(event){
		  location.href="/ex/shopping/product/Write_Review";
	  });

			  
  });
  
  
	function removeIt(thisBno) {
		location.href="/ex/shopping/product/remove?bno="+thisBno;
  	}

  </script>

</head>
<body>
	<div class="board_main">
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
			</select> <input type="text" name="keyword" id="keywordInput"
				value="${pageMaker.keyword}">
			<button id="searchBtn">검색하기</button>
			<button id="writeBtn" style="float: right;">글쓰기</button>
		</div>

		<table class='customers' width=100% border="1">
			<tr>
				<th style="width: 20%">제품</th>
				<th style="width: 50%">구매자들의 후기 보기~</th>
				<th style="width: 15%">추천해요</th>
				<th style="width: 15%">고객ID</th>
			</tr>

			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.what_product }</td>
					<td>${dto.review }</td>
					<td>
						<p>${dto.recommand } <br><br>
							${dto.recommand2 }</p>
					</td>
					<td>${dto.userid }
						<button id="remove_btn" onclick="removeIt(${dto.bno })">삭제</button>
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
					<a href='list${pageMaker.makeSearch(1)}'>&laquo;</a>
				</c:if>

				<!-- 현재  startPage 11~20 endPage 이라면,
               버튼은 TRUE값이 되며 누를시에 10페이지로 넘어간다. -->
				<!-- < -->
				<c:if test="${pageMaker.prev }">
					<a href='list${pageMaker.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
				</c:if>

				<!-- start,end 페이지를 forEach로 출력. 11~20 -->
				<c:forEach begin="${pageMaker.startPage }"
					end="${ pageMaker.endPage}" var="idx">
					<!-- 현재 페이지와 idx값이 같다면 클래스 이름을 정해주고 css 스타일을 부여합니다. -->
					<a href='list${pageMaker.makeSearch(idx)}'
						<c:out value="${pageMaker.page==idx?' class=active ':'' }"/>>
						${idx}</a>
				</c:forEach>


				<%--<a href='#'>1</a>
               <a href='list${pageMaker.makeSearch(2)}'>2</a>
              <a href='#' class="active">3</a> --%>


				<!-- <를 누를시, 현재 11~20페이지를 보여준다면, 21페이지로 넘어간다. -->
				<!-- > -->
				<c:if test="${pageMaker.next }">
					<a href='list${pageMaker.makeSearch(pageMaker.endPage+1)}'>&gt;</a>

				</c:if>

				<!-- 현재 페이지가 데이터 마지막이 아니면 >>를 보여준다. 클릭하면 강제로 totalEndPage로 이동 -->
				<!-- >> -->
				<c:if test="${pageMaker.page != pageMaker.totalEndPage}">
					<a href='list${pageMaker.makeSearch(pageMaker.totalEndPage)}'>&raquo;</a>
				</c:if>

			</div>
		</div>
		<!-- 페이지 버튼을 만드는 공간이다. -->

	</div>
</body>
</html>
