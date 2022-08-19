const slideShowBox = document.getElementsByClassName("detail_slideShow");
const slides = document.querySelector(".slides");
const slideImg = document.querySelectorAll(".slides li"); 
let currentIndex = 0; // 현재 슬라이드
let slideCount = 0; // 슬라이드 개수
const prev = document.querySelector(".prev");
const next = document.querySelector(".next");
const slideWidth = 700; // 한개의 슬라이드의 넓이
const slideMargin = 100; // 슬라이드간의 마진

let slideImgs = document.querySelectorAll('.slides img');
for (let i = 0; i < slideImgs.length; i++) {
	if((slideImgs[i].src).includes('.jpg') == true || (slideImgs[i].src).includes('.png') == true)
		slideCount++;
	}

if(slideCount == 0)
	slideShowBox[0].style.display = "none";

// 전체 슬라이드 컨테이너 넓이 설정
slides.style.width = (slideWidth + slideMargin) * slideCount + "px";

// 슬라이드간의 이동 거리
function moveSlide(num) {
    slides.style.left = -num * 800 + "px"; // 슬라이드 넓이 + 마진만큼 이동
    currentIndex = num;
}

prev.addEventListener('click', function() {
    if(currentIndex !== 0)
        moveSlide(currentIndex - 1);
    else if(currentIndex == 0) {
    	moveSlide(currentIndex + slideCount - 1);
    }
});

next.addEventListener("click", function() {
    if(currentIndex !== slideCount - 1)
        moveSlide(currentIndex + 1);
    else if(currentIndex == slideCount -1)
    	moveSlide(0)
});