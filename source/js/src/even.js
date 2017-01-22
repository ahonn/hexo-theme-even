(function () {
  "use strict";

  var Even = {};

  Even.search = {
    _searchData: null,
    _contentCache: null,

    _toggleSearch: function () {
      var $menuSearch = $('.menu-search'),
          $searchInput = $('#search-input');

      $('#open-search').click(function () {
        $menuSearch.addClass('expanded');
        $searchInput.focus();
        this._fetchSearchData();
      }.bind(this));

      $('#close-search').click(function () {
        $menuSearch.removeClass('expanded');
        $searchInput.val('');
        if (this._contentCache) {
          $('#content').replaceWith(this._contentCache);
        }
      }.bind(this));
    },

    _fetchSearchData: function () {
      var searchPath = '/search.xml';
      
      if (!this._searchData) {
        var that = this;
        $.ajax({
          url: searchPath,
          dataType: 'xml',
          success: function (xmlResponse) {
            that._searchData = $('entry', xmlResponse).map(function () {
              return {
                title: $('title', this).text(),
                content: $("content",this).text(),
                url: $( "url" , this).text()
              };
            }).get();
          }
        })
      }
    },

    _filterSearchData: function (keywords) {
      var keywordsRe = new RegExp(keywords, 'i');
      return this._searchData.filter(function (item) {
        return keywordsRe.test(item.title) || keywordsRe.test(item.content);
      });
    },

    _generateSearchContent: function (searchResult) {
      var searchContent = '';
      if (searchResult.length > 0) {
        searchResult.map(function (item) {
          searchContent += '<article class="post">';
          searchContent += '<header class="post-header"><h1 class="post-title"><a class="post-link" href="'
                            + item.url + '">' + item.title +'</a></h1></header>';
          searchContent += '<div class="post-content">' + item.content.split('<a id="more"></a>')[0]
                            + '<div class="read-more"><a href="' + item.url 
                            + '" class="read-more-link">Read more..</a></div></div>';
          searchContent += '</article>';
        }); 
      } else {
        searchContent += '<div class="no-result"><h2>No result found!</h2></div>';
      }

      searchContent = '<div id="content" class="content" ><section class="search-result post">' 
                      + searchContent + '</section></div>';
      return searchContent;
    },

    _getSearchResult: function () {
      var $searchInput = $('#search-input');
      this._contentCache = $('#content').clone();

      var that = this;
      $searchInput.on('input', function () {
        var keywords = this.value.trim();
        if (keywords.length == 0) {
          $('#content').replaceWith(that._contentCache);
          return ;
        }

        var searchResult = that._filterSearchData(keywords);
        var searchContent = that._generateSearchContent(searchResult);
        $('#content').replaceWith(searchContent);
      });

      // Shield the Enter key
      $searchInput.keydown(function (e) {
        if (e.keyCode == 27) {
          $('#close-search').click();
        }
        if (e.keyCode == 13) {
          return false;
        }
      });

    },

    register: function () {
      this._toggleSearch();
      this._getSearchResult();
    }
  };


  Even.backToTop = {
    register: function () {
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
    }
  };


  Even.postToc = {
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

    register: function () {
      this._tocBlockFollow();
      this._tocLinkJump();
    }
  };


  Even.mobileNavbar = {
    _navbarScroll: function () {
      var $header = $('#header');

      $(window).scroll(function () {
        var scrollTop = $(window).scrollTop();

        var $mobileNav = $('.mobile-navbar');
        if (scrollTop > $header.height()) {
          $mobileNav.fadeIn();
        } else {
          $mobileNav.fadeOut();
        }
      }); 
    },

    _toggleNavbarMenu: function () {
      var toggleIcon = function () {
        if ($(this).hasClass('icon-click')) {
          $(this).removeClass('icon-click').addClass('icon-out');
        } else {
          $(this).removeClass('icon-out').addClass('icon-click');
        }
        $('.mobile-menu').slideToggle(200);
      };

      $('.mobile-header-icon').click(toggleIcon);
    },

    register: function () {
      this._navbarScroll();
      this._toggleNavbarMenu();
    }
  };

  Even.fancybox = {
    register: function () {
      if ($.fancybox){
        $('.post').each(function () {
          $(this).find('img').each(function () {
            $(this).wrap('<a class="fancybox" href="' + this.src + '" title="' + this.alt + '"></a>')
          });
        });

        $('.fancybox').fancybox({
          openEffect	: 'elastic',
          closeEffect	: 'elastic'
        });
      }
    }
  };

  this.Even = Even;
}.call(this));