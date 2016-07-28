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
  $(function() {
    var $sidebar   = $("#sidebar"),
        $headerlink = $(".headerlink"),
        $toclink    = $(".toc-link");

    if ($sidebar.length) {
      var offset = $sidebar.offset();

      $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();

        if (scrollTop > offset.top) {
          $sidebar.css({
            "position": "fixed",
            "top": "15px"
          });
        } else {
          $sidebar.css({
            "position": "absolute",
            "top": offset.top
          });
        }

        for(var i = 0; i < $headerlink.length; i++) {
          var eqLength = i + 1 === $headerlink.length,
              minTop = $($headerlink[i]).offset().top,
              maxTop = eqLength ? Infinity : $($headerlink[i+1]).offset().top;

          if (minTop <= scrollTop && scrollTop < maxTop) {
            $($toclink[i]).addClass("active");
          } else {
            $($toclink[i]).removeClass("active");
          }
        }
        
      });
    }
  });
});