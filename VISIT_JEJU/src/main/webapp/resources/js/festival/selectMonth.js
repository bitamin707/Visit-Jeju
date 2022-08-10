var date = new Date();
var nowMonth = date.getMonth() + 1;
var check = 0;
var box = document.getElementsByClassName("event_area");
var selectMonth = document.getElementsByClassName("selectMonth");
var arr = [];
var count = 0;
var selectCSS = 0;

window.onload = function() {
	inputMonth(nowMonth);
}

// 행사별 시작 날짜와 종료 날짜 사이의 월값 계산
function inputMonth(num) {
	areaReset();
	for(var i = 0; i < box.length; i++) {
		var check = 0;

		var start_date = new Date(document.getElementsByClassName("start_date")[i].value);
		var end_date = new Date(document.getElementsByClassName("end_date")[i].value);

		var startMonth = start_date.getMonth() + 1;
		var endMonth = end_date.getMonth() + 1;

		var arrMonth = [];
		for(let j = startMonth; j <= endMonth; j++) {
			arrMonth.push(j);
		}
		selectInputNum(arrMonth, num);
	}
}

// 해당 월 선택에 대한 CSS 변경
function changeMonthFont(num) {
	for(let i = 0; i < selectMonth.length; i++) {
		selectMonth[i].style.cssText="color: rgba(0, 0, 0, 50%);"
	}
	selectMonth[num].style.cssText="color: orange; font-weight: bold;"
}

function countReset() {
	if(count == box.length)
		count = 0;
}
function areaReset() {
	for(let i = 0; i < box.length; i++)
		box[i].style.display="";
}

// 전체 선택
function selectAll() {
	changeMonthFont(0);
	areaReset();
}

// 해당 월 선택에 대한 축제 항목 출력
function selectInputNum(arr, num) {
	changeMonthFont(num);
	for(let k = 0; k < arr.length; k++) {
		if(arr[k] == num)
			check = num;
	}
	if(check == 0)
		box[count].style.display="none";
	count++;
	check = 0;
	countReset();
}