const min_qty = 1;
const max_qty = 3;
var price = 0;
var img_name = "";
var show_what;

window.onload=function(){
	$('#board_main').hide();
    price = document.getElementById("share").innerHTML;   
    document.getElementById("stock_price").value = price;
    console.log($("#stock_price").val());
    document.getElementById('board_main').scrollIntoView();
}



function minus_qty() {
    var this_qty = $("#stock").val();
        if(this_qty==min_qty){

            var this_qty = $("#stock").val()*1+1;
            var stock_price = $("#stock_price").val()*1+parseInt(price);
            return;

          } else { 
        var this_qty = $("#stock").val()*1-1;
        $("#stock").val(this_qty);

        var stock_price = $("#stock_price").val()*1-parseInt(price);
        $("#stock_price").val(stock_price);

    }
}

function plus_qty() {
    var this_qty = $("#stock").val();
    if (this_qty==max_qty) {

        var this_qty = $("#stock").val()*1-1;
        var stock_price = parseInt($("#stock_price").val())-parseInt(price);
        return;

    } else {

    var this_qty = $("#stock").val()*1+1;
    $("#stock").val(this_qty);

    var stock_price = parseInt($("#stock_price").val())+parseInt(price);
    $("#stock_price").val(stock_price);
    }
}



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
		  alert("Product"+'${pageMaker.makePage(1)}'
				  +'&searchType='+$("select option:selected").val()
				  +"&keyword="+$('#keywordInput').val());
		  
		  self.location="Product"+'${pageMaker.makePage(1)}'
		  +'&searchType='+$("select option:selected").val()
		  +"&keyword="+$('#keywordInput').val();
		  
	  })
	  // 검색 버튼을 눌렀을 때, 카테고리, 검색어 등등의 밸류값을 전송합니다.
	  // PageMaker에서 setter로 받습니다.
	  // pageMaker문서의 makePage를 참조하세요.
	  // 쿼리스트링으로 값이 바뀐 PageMaker를 컨트롤러에서 받아와 전송합니다.
	  
	  $('#writeBtn').on("click",function(event){
		  location.href="/ex/shopping/product/Write_Review";
	  })
	    
			  
  });
  
  
  function detail() {
  	$('.info_images').show();
	$('#board_main').hide();
  }
  
  function review() {
  	$('.info_images').hide();
	$('#board_main').show();
  }
  
  
	function removeIt(thisBno, thisPno) {
		location.href="/ex/shopping/product/remove?bno="+thisBno+"&pno="+thisPno;
  	}
	
	