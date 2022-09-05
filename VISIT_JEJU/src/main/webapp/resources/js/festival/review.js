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