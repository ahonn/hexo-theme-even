(function () {
  "use strict";

  var Even = {
    registerSearch: function () {
      var $menuSearch = $('.menu-search'),
          $openSearch = $('#open-search'),
          $closeSearch = $('#close-search');

      $openSearch.click(function () {
        $menuSearch.addClass('expanded');
      });
      $closeSearch.click(function () {
        $menuSearch.removeClass('expanded');
      })
    },

    registerBackToTop: function () {
      var $backToTop = $('#back-to-top');

      $(window).scroll(function () {
        if($(window).scrollTop() > 100) {
          $backToTop.fadeIn(1000);
        } else {
          $backToTop.fadeOut(1000);
        }
      });

      $backToTop.click(function () {
        $('body').animate({ scrollTop: 0 });
      });
    },

    _tocBlockFollow: function () {
      var SPACING = 20;

      var $toc = $('.post-toc'),
          $footer = $('.post-footer');

      if ($toc.length) {
        var minScrollTop = $toc.offset().top - SPACING,
            maxScrollTop = $footer.offset().top - $toc.height() - SPACING;

        var tocState = {
          start: {
            'position': 'absolute',
            'top': minScrollTop
          },
          process: {
            'position': 'fixed',
            'top': SPACING
          },
          end: {
            'position': 'absolute',
            'top': maxScrollTop
          }
        }

        $(window).scroll(function () {
          var scrollTop = $(window).scrollTop();

          if (scrollTop < minScrollTop) {
            $toc.css(tocState.start);
          } else if (scrollTop > maxScrollTop) {
            $toc.css(tocState.end);
          } else {
            $toc.css(tocState.process);
          }
        })
      }
    },

    _tocLinkJump: function () {
      var HEADERFIX = 30;

      var $toclink = $('.toc-link'),
          $headerlink = $('.headerlink');

      var headerlinkTop = $.map($headerlink, function (link) {
        return $(link).offset().top;
      });

      $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();

        for (var i = 0; i < $toclink.length; i++) {
          var isLastOne = i + 1 === $toclink.length,
              currentTop = headerlinkTop[i] - HEADERFIX,
              nextTop = isLastOne ? Infinity : headerlinkTop[i+1] - HEADERFIX;
              
          if (currentTop < scrollTop && scrollTop <= nextTop) {
            $($toclink[i]).addClass('active')
          } else {
            $($toclink[i]).removeClass('active')
          }
        }
      });
    },

    registerPostToc: function () {
      this._tocBlockFollow();
      this._tocLinkJump();
    },

    registerMobileNavbar: function () {
      var $header = $('#header');

      $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();

        var mobileNav = $('.mobile-navbar');
        if (scrollTop > $header.height()) {
          mobileNav.fadeIn();
        } else {
          mobileNav.fadeOut();
        }
      }); 
      
      $('.mobile-header-icon').click(function () {
        if ($(this).hasClass('icon-click')) {
          $(this).removeClass('icon-click').addClass('icon-out');
        } else {
          $(this).removeClass('icon-out').addClass('icon-click');
        }
        $('.mobile-menu').slideToggle(250);
      });
    },

  };

  this.Even = Even;
}.call(this));