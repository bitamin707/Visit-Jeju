const min_qty = 1;
const max_qty = 3;
var price = 0;
var img_name = "";

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