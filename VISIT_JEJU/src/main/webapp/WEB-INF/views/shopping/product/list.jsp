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
	alert('���並 �����߽��ϴ�.');
}
var result='${write}';
if(result=='success'){
	alert('�ش� ��ǰ�� ���並 �ۼ��߽��ϴ�.');
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
	  // �˻� ��ư�� ������ ��, ī�װ�, �˻��� ����� ������� �����մϴ�.
	  // PageMaker���� setter�� �޽��ϴ�.
	  // pageMaker������ makePage�� �����ϼ���.
	  // ������Ʈ������ ���� �ٲ� PageMaker�� ��Ʈ�ѷ����� �޾ƿ� �����մϴ�.
	  
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
		<h2 class="review_board">������ ��ǰ �ı�</h2>
		<h5 class="review_board_menu">�Ϲ� ����(${pageMaker.totalCount})</h5>
		<h5 class="review_board_menu">���� ����(0)</h5>
		<h5 style="display: inline-block; margin: 10px auto 20px 2%;">
			<span class="review_board_menu2"> Event</span> <span
				class="review_event">��Ÿ���ı� �ۼ� �� 2,000���� �������� �帳�ϴ�.</span>
		</h5>

		<div class="review_button">
			<select name="searchType">
				<option value="n"
					<c:out value="${pageMaker.searchType==null?'selected':'' }"/>>��ü</option>
				<!-- <option value="n" selected>----</option>
                  <option value="n">----</option> -->
				<option value="t"
					<c:out value="${pageMaker.searchType eq 't'?'selected':'' }"/>>��ǰ�̸�</option>
				<option value="c"
					<c:out value="${pageMaker.searchType eq 'c'?'selected':'' }"/>>��õ</option>
				<option value="w"
					<c:out value="${pageMaker.searchType eq 'w'?'selected':'' }"/>>�������̵�</option>
			</select> <input type="text" name="keyword" id="keywordInput"
				value="${pageMaker.keyword}">
			<button id="searchBtn">�˻��ϱ�</button>
			<button id="writeBtn" style="float: right;">�۾���</button>
		</div>

		<table class='customers' width=100% border="1">
			<tr>
				<th style="width: 20%">��ǰ</th>
				<th style="width: 50%">�����ڵ��� �ı� ����~</th>
				<th style="width: 15%">��õ�ؿ�</th>
				<th style="width: 15%">��ID</th>
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
						<button id="remove_btn" onclick="removeIt(${dto.bno })">����</button>
					</td>
				</tr>
			</c:forEach>
		</table>

		<!-- ������ ��ư�� ����� �����̴�. -->
		<div class="pagination">
			<div class="pagination_btn">

				<!-- ���� �������� 1�� �ƴϸ� <<�� �����ش�. Ŭ���ϸ� ������ 1�������� �̵� -->
				<!-- << -->
				<c:if test="${pageMaker.page !=1}">
					<a href='list${pageMaker.makeSearch(1)}'>&laquo;</a>
				</c:if>

				<!-- ����  startPage 11~20 endPage �̶��,
               ��ư�� TRUE���� �Ǹ� �����ÿ� 10�������� �Ѿ��. -->
				<!-- < -->
				<c:if test="${pageMaker.prev }">
					<a href='list${pageMaker.makeSearch(pageMaker.startPage-1)}'>&lt;</a>
				</c:if>

				<!-- start,end �������� forEach�� ���. 11~20 -->
				<c:forEach begin="${pageMaker.startPage }"
					end="${ pageMaker.endPage}" var="idx">
					<!-- ���� �������� idx���� ���ٸ� Ŭ���� �̸��� �����ְ� css ��Ÿ���� �ο��մϴ�. -->
					<a href='list${pageMaker.makeSearch(idx)}'
						<c:out value="${pageMaker.page==idx?' class=active ':'' }"/>>
						${idx}</a>
				</c:forEach>


				<%--<a href='#'>1</a>
               <a href='list${pageMaker.makeSearch(2)}'>2</a>
              <a href='#' class="active">3</a> --%>


				<!-- <�� ������, ���� 11~20�������� �����شٸ�, 21�������� �Ѿ��. -->
				<!-- > -->
				<c:if test="${pageMaker.next }">
					<a href='list${pageMaker.makeSearch(pageMaker.endPage+1)}'>&gt;</a>

				</c:if>

				<!-- ���� �������� ������ �������� �ƴϸ� >>�� �����ش�. Ŭ���ϸ� ������ totalEndPage�� �̵� -->
				<!-- >> -->
				<c:if test="${pageMaker.page != pageMaker.totalEndPage}">
					<a href='list${pageMaker.makeSearch(pageMaker.totalEndPage)}'>&raquo;</a>
				</c:if>

			</div>
		</div>
		<!-- ������ ��ư�� ����� �����̴�. -->

	</div>
</body>
</html>
