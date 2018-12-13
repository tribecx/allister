$(window).on('scroll', function () {
    var scrollTop = $(window).scrollTop();
    if (scrollTop > 50) {
        $('#header-nav').stop().animate({height: "79x"},200);
        $('#header-logo').stop().animate({width: "80px"},200);
    }
    else {
      $('#header-nav').stop().animate({height: "120x"},200);
      $('#header-logo').stop().animate({width: "120px"},200);
    }
});
