"use strict";

$(function() {
  // Back to top
  $(function () {
    var $back2top = $("#back2top");

    $back2top.click(function (e) {
      var timer = setInterval(function () {
        var top = $(window).scrollTop();
        $(window).scrollTop(Math.floor(-top / 5) + top);

        if (!top) {
          clearInterval(timer);
        }
      }, 30);
    });
  });

  // Post follow sidebar
  (function() {
    var $sidebar    = $("#sidebar"),
        $tags       = $('.tags'),
        $headerlink = $(".headerlink"),
        $toclink    = $(".toc-link");

    if ($sidebar.length) {
      var minScrollTop = $sidebar.offset().top,
          maxScrollTop = $tags.offset().top - $sidebar.height();

      $(window).load(function() {
        maxScrollTop = $tags.offset().top - $sidebar.height();
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
            "top": maxScrollTop
          });
        }else {
          $sidebar.css({
            "position": "absolute",
            "top": minScrollTop
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
