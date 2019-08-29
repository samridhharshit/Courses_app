$(document).ready(function() {
  var Count = 0;
  var cartCount = "courses in cart count: ";

  $("a.direct").click(function() {
    if ($(this).hasClass("selected-cart")) {
      alert('item already in cart');
    } else {
      $(this).addClass("selected-cart");
      Count++;

    }
    SetCartOnview(cartCount + Count);
    
  });

  $("a.remove").click(function() {
    if ($(this).hasClass("selected-cart")) {
        alert('item not present in cart');
    } else {
        $(this).addClass("selected-cart");
        Count--;

    }
    SetCartOnview(cartCount + Count);
    
  });

  function SetCartOnview(c) {
    $("#cartCount").html(c);
  }
});
