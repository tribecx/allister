$(document).ready(function() {
  menu();
  carousel();
});

function menu() {
  var menu = $('.menu'),
      links1 = $('.menu-step-1 .nav-link'),
      links2 = $('.menu-step-2 .nav-link');

  $('.hamburger').click(function() {
    if ($(menu).hasClass('step-3') || $(menu).hasClass('step-2')) {
      menuStep1();
    } else if ($(menu).hasClass('step-1')) {
      closeMenu();
    } else {
      menuStep1();
    }
  });

  $(links1).click(function() {
    menuStep2();
  });

  $(links2).click(function() {
    menuStep3();
  });

  $(window).click(function(event) {
    if (
      $('.header').has(event.target).length == 0
      &&
      !$('.header').is(event.target)
    ) {
      closeMenu();
    }
  });

  $(window).scroll(function() {
    closeMenu();
  });

  $(document).scroll(function() {
    if (inside($('.hamburger'),$('.hero')) == true) {
      $('.hamburger').addClass('alt-dark');
    } else {
      $('.hamburger').removeClass('alt-dark');
    }
  });
}

function menuStep1() {
  $('.menu').removeClass('step-2 step-3');
  $('.menu').addClass('step-1');
  $('.hamburger').addClass('active');

  if ($(window).width() <= 600) {
    $('.body').addClass('scroll-locked');
  } else {
    $('.body').removeClass('scroll-locked');
  }
}

function menuStep2() {
  $('.menu').removeClass('step-1 step-3');
  $('.menu').addClass('step-2');
  $('.hamburger').removeClass('active alt-dark');
  $('.body').addClass('scroll-locked');
}

function menuStep3() {
  $('.menu').removeClass('step-1 step-2');
  $('.menu').addClass('step-3');
  $('.body').addClass('scroll-locked');
}

function closeMenu() {
  $('.menu').removeClass('step-1 step-2 step-3');
  $('.hamburger').removeClass('active');
  $('.body').removeClass('scroll-locked');

  if (inside($('.hamburger'),$('.hero')) == true) {
    $('.hamburger').addClass('alt-dark');
  } else {
    $('.hamburger').removeClass('alt-dark');
  }
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
