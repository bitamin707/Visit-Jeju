const min_qty = 1;
var product_max_qty = 0;
var max_qty = 0;
var price = 0;
   	
function minus_qty() {
	var this_qty = $("#stock").val();
	if (this_qty == min_qty) {

		var this_qty = $("#stock").val() * 1 + 1;
		var stock_price = $("#stock_price").val() * 1 + parseInt(price);
		return;

	} else {
		var this_qty = $("#stock").val() * 1 - 1;
		$("#stock").val(this_qty);

		var stock_price = $("#stock_price").val() * 1 - parseInt(price);
		$("#stock_price").val(stock_price);

	}
}

function plus_qty() {
	var this_qty = $("#stock").val();
	if (this_qty == max_qty) {

		var this_qty = $("#stock").val() * 1 - 1;
		var stock_price = parseInt($("#stock_price").val()) - parseInt(price);
		return;

	} else {

		var this_qty = $("#stock").val() * 1 + 1;
		$("#stock").val(this_qty);

		var stock_price = parseInt($("#stock_price").val()) + parseInt(price);
		$("#stock_price").val(stock_price);
	}
}

var result = '${remove}';
if (result == 'success') {
	alert('리뷰를 삭제했습니다.');
}
var result = '${write}';
if (result == 'success') {
	alert('해당 제품의 리뷰를 작성했습니다.');
}

function detail() {

}

function review() {
	document.getElementById('board_main').scrollIntoView();
}

function removeIt(thisBno, thisPno) {
	location.href = "/ex/shopping/product/remove?bno=" + thisBno + "&pno="
			+ thisPno + "#board_main";
}


// ----- 슬라이드 쇼 스크립트 ----- //

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
showSlides(slideIndex += n);
}

function currentSlide(n) {
showSlides(slideIndex = n);
}

function showSlides(n) {
var i;
var slides = document.getElementsByClassName("mySlides");
var dots = document.getElementsByClassName("dot");
if (n > slides.length) {slideIndex = 1}    
if (n < 1) {slideIndex = slides.length}
for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
}
for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
}
slides[slideIndex-1].style.display = "block";  
dots[slideIndex-1].className += " active";
}
