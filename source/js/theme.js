"use strict";

$(function() {
  // Back to top
  (function () {
    var $back2top = $("#back2top");

    $(window).scroll(function () {
      if($(window).scrollTop() > 100) {
        $back2top.animate({
          opacity: 1
        }, 'slow', 'ease');
      } else {
        $back2top.animate({
          opacity: 0
        }, 'slow', 'ease');
      }
    });

    function smoothScroll(el, to, duration) {
      if (duration < 0) {
        return;
      }
      var difference = to - $(window).scrollTop();
      var perTick = difference / duration * 10;
      setTimeout(function() {
        if (!isNaN(parseInt(perTick, 10))) {
          window.scrollTo(0, $(window).scrollTop() + perTick);
          smoothScroll(el, to, duration - 10);
        }
      }.bind(this), 10);
    }

    $back2top.click(function (e) {
      e.preventDefault();
      smoothScroll($(window), 0, 200);
    });
  })();

  // Post follow sidebar
  (function() {
    var $sidebar    = $("#sidebar"),
        $tags       = $('.tags'),
        $headerlink = $(".headerlink"),
        $toclink    = $(".toc-link");

    if ($sidebar.length) {
      var minScrollTop = $sidebar.offset().top - 15,
          maxScrollTop = $tags.offset().top - $sidebar.height() - 15;

      $(window).load(function() {
        maxScrollTop = $tags.offset().top - $sidebar.height() - 15;
      });
      $(window).scroll(function () {
        var scrollTop     = $(window).scrollTop();

        if (minScrollTop < scrollTop && scrollTop < maxScrollTop) {
          $sidebar.css({
            "position": "fixed",
            "top": "15px"
          });
        } else if (scrollTop > maxScrollTop) {
          $sidebar.css({
            "position": "absolute",
            "top": maxScrollTop + 15
          });
        } else {
          $sidebar.css({
            "position": "absolute",
            "top": minScrollTop + 15
          });
        }

        for(var i = 0; i < $headerlink.length; i++) {
          var eqLength = i + 1 === $headerlink.length,
              minTop = $($headerlink[i]).offset().top - 20,
              maxTop = eqLength ? Infinity : $($headerlink[i+1]).offset().top - 20;

          if (minTop < scrollTop && scrollTop <= maxTop) {
            $($toclink[i]).addClass("active");
          } else {
            $($toclink[i]).removeClass("active");
          }
        }
      });
    }
  })();
});
