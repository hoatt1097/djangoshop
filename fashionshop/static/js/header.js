$(document).ready(function() {

  $(".category li a").click(function(){
    var id_menu =  $(this).attr("itemprop");
    var sort = "default"
    $(this).attr('href', '/fashionshop/category/' + id_menu + '/'+ sort);
  })

  $(".cart").click(function(){
    window.location.replace("/fashionshop/cart");
  })

  $("button[data-role='addtocart']").click(function(){
    var amount_cart =  $(".top_cart_qty").text();
    amount_cart = parseInt(amount_cart) + 1;
    $(".top_cart_qty").text(amount_cart);
  })
  

});
