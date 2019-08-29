$(document).ready(function() {
    
  var cartCount = 0;
  
  $("a.direct").click(function() {
     if( $(this).hasClass('selected-cart') ) {
         // ignore
     } else {
         $(this).addClass('selected-cart');
         cartCount++;
     }

     console.log(cartCount)
  })

})
