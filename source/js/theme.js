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
        topPadding = 15;

    if ($sidebar.length) {
      var offset = $sidebar.offset();

      $(window).scroll(function() {
        if ($(window).scrollTop() > offset.top) {
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
      });
    }
  });
});