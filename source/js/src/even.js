(function (window) {
  'use strict';

  var Even = {};

  Even.backToTop = function () {
    var $backToTop = $('#back-to-top');

    $(window).scroll(function () {
      if ($(window).scrollTop() > 100) {
        $backToTop.fadeIn(1000);
      } else {
        $backToTop.fadeOut(1000);
      }
    });

    $backToTop.click(function () {
      $('body').animate({ scrollTop: 0 });
    });
  };

  Even.mobileNavbar = function () {
    var $mobileNav = $('#mobile-navbar');
    var $mobileNavIcon = $('.mobile-navbar-icon');
    var slideout = new Slideout({
      'panel': document.getElementById('mobile-panel'),
      'menu': document.getElementById('mobile-menu'),
      'padding': 150,
      'tolerance': 70
    });
    slideout.disableTouch();

    $mobileNavIcon.click(function () {
      slideout.toggle();
    });

    slideout.on('beforeopen', function() {
      $mobileNav.addClass('fixed-open');
      $mobileNavIcon.addClass('icon-click').removeClass('icon-out');
    });

    slideout.on('beforeclose', function() {
      $mobileNav.removeClass('fixed-open');
      $mobileNavIcon.addClass('icon-out').removeClass('icon-click');
    });
  };

  window.Even = Even;
})(window);
