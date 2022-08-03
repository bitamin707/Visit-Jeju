const min_qty = 1;
const max_qty = 3;

function minus_qty() {
    var this_qty = $("#stock").val();
        if(this_qty==min_qty){
            var this_qty = $("#stock").val()*1+1;
            var stock_price = $("#stock_price").val()*1+186;
            return;
          } else {
        var this_qty = $("#stock").val()*1-1;
        $("#stock").val(this_qty);
        var stock_price = $("#stock_price").val()*1-186;
        $("#stock_price").val(stock_price);
    }
}

function plus_qty() {
    var this_qty = $("#stock").val();
    if (this_qty==max_qty) {
        var this_qty = $("#stock").val()*1-1;
        var stock_price = $("#stock_price").val()*1-186;
        return;
    } else {
    var this_qty = $("#stock").val()*1+1;
    $("#stock").val(this_qty);
    var stock_price = $("#stock_price").val()*1+186;
    $("#stock_price").val(stock_price);
    }
}

function dfadsfasd(){
    window.alert("hell0");
}