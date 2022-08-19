const min_qty = 1;
const max_qty = 3;
var price = 0;
var img_name = "";
var show_what;

window.onload=function(){
    price = document.getElementById("share").innerHTML;   
    document.getElementById("stock_price").value = price;
    console.log($("#stock_price").val());
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
  
  
  function detail() {

  }
  
  function review() {
	document.getElementById('board_main').scrollIntoView();
  }
  
  
	function removeIt(thisBno, thisPno) {
		location.href="/ex/shopping/product/remove?bno="+thisBno+"&pno="+thisPno+"#board_main";
  	}
	
	