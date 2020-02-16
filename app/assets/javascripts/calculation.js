
$(function() {
 
  $(".field-num").change(function() {
   
    var array = [];
    for(var i = 0; i < $(".field-input").length; i++){
   
      var item_price = $(".field-input").eq(i).data("price");
      var item_select = $(".field-num").eq(i).val();
      
      array.push(item_price * item_select);
      
    }
   
    var total = 0;
    for(var j = 0; j < array.length; j++){
      total += array[j];
    
    }
   
    if(total <= 2000) {
      var postage = 500;
    } else {
      var postage = (-500);
    }
   
   
    
    $("#total_price").val((total + postage) + "円");
   
  });
   
});