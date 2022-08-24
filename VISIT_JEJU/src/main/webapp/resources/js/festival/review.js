function checkStar() {
	var star = document.getElementsByClassName("starValue");
	for(let i = 0; i < star.length; i++) {
		var value = star[i].value;
		for(let j = 1; j <= value; j++) {
			document.getElementsByClassName("srate" + j)[i].checked = true;
		}
	}
}

checkStar();

function review_delete() {
	const fno = document.getElementById("fno").value;
	const username = document.getElementsByClassName("username");
	console.log(fno);
	console.log(username);
//	if (confirm("삭제하시겠습니까??") == true) {
//		location.href="/ex/festival/modify/festivalDelete?fno=";
//	} else { //취소
//		return false;
//	}
}