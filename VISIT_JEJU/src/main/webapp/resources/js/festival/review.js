
$(".review_btn").on("click", function(e) {
	const fno = "${fno}";
	const userid = "${userid}";
	const rating = $("select").val();
	const content = $("textarea").val();
	
	const data = {
			fno : fno,
			username : userid,
			rating : rating,
			rcontnt : content
			
	}
	$.ajax({
		data : data,
		type : 'POST',
		url : '/ex/festival/detail/reviewCreate',
	});
});
