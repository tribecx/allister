$(document).ready(function() {
  menu();
  carousel();
});

function menu() {
  $('.hamburger').click(function() {
    $(this).toggleClass('alt');
    $('.menu').toggleClass('alt');
  });

  $(window).click(function(event) {
    if (
      $('.header').has(event.target).length == 0
      &&
      !$('.header').is(event.target)
    ) {
      $('.hamburger').removeClass('alt');
      $('.menu').removeClass('alt');
    }
  });

  $(window).scroll(function() {
    $('.hamburger').removeClass('alt');
    $('.menu').removeClass('alt');
  });

  $(document).scroll(function() {
    if (inside($('.hamburger'),$('.hero')) == true) {
      $('.hamburger').addClass('alt-dark');
    } else {
      $('.hamburger').removeClass('alt-dark');
    }
  });
}

function carousel() {
  $(".slider").owlCarousel({
    autoplay: true,
    autoplayTimeout: 8000,
    items: 1,
    loop: true,
    startPosition: 1
  });
}

function inside(element, zone) {
  var edge = $(element).offset().top + ($(element).innerHeight()/2),
      limitTop = $(zone).offset().top,
      limitBottom = $(zone).offset().top + $(zone).innerHeight();

  if (
    edge > limitTop
    &&
    edge < limitBottom
  ) {
    return true;
  } else {
    return false;
  }
}
