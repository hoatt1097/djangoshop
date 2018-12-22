$(document).ready(function() {
  $(".product-image").hover(function(){
    $(".quick_action", this).toggle();
  });

  $(".product-title a").click(function(){
    var image_id =  $(this).attr("itemprop");
    $(this).attr('href', '/fashionshop/product/' + image_id);
  })
  
  $(".btn-quicklook").click(function(){
    var image_id =  $(this).attr("itemprop");
    $(this).attr('href', '/fashionshop/product/' + image_id);
  })

  $(".colection ul li a").click(function(){
    var id_menu =  $(this).attr("itemprop");
    $(this).attr('href', '/fashionshop/product/category/' + id_menu + '/default');
  })

});
