(function () {
  Even.search = function () {
    var _searchData = null,
        _contentCache = null;

    var $menuSearch = $('.menu-search'),
        $searchInput = $('#search-input');

    $('#open-search').click(handleOpenSeach);
    $('#close-search').click(handleCloseSeach);
    $searchInput.on('input', handleSearchInput);

    function handleOpenSeach() {
      $menuSearch.addClass('expanded');
      $searchInput.focus();

      $.ajax({
        url: CONFIG.searchPath,
        dataType: 'xml',
        success: function (xmlResponse) {
          _searchData = $('entry', xmlResponse).map(function () {
            return {
              title: $('title', this).text(),
              content: $('content', this).text(),
              url: $('url', this).text()
            };
          }).get();
        }
      });
    }

    function handleCloseSeach() {
      $menuSearch.removeClass('expanded');
      $searchInput.val('');
      if (_contentCache) {
        $('#content').replaceWith(_contentCache);
      }
    }

    function handleSearchInput() {
      if (!_contentCache) {
        _contentCache = $('#content').clone();
      }

      var keywords = this.value.trim();
      if (keywords.length === 0) {
        $('#content').replaceWith(_contentCache);
        return;
      }

      var keywordsRe = new RegExp(keywords, 'i');
      var searchResult = _searchData.filter(function (item) {
        return keywordsRe.test(item.title) || keywordsRe.test(item.content);
      });

      $('#content').replaceWith(_generateSearchContent(searchResult));
    }

    function _generateSearchContent(searchResult) {
      var resultTemplate = $('#search-result').html();
      var noResultTemplate = $('#no-search-result').html();
    
      var searchContent = '';
      if (searchResult.length > 0) {
        searchResult.map(function (post) {
          var article = resultTemplate
                .replace(/\$url\$/g, post.url)
                .replace(/\$title\$/g, post.title)
                .replace(/\$content\$/g, post.content.split('<a id="more"></a>')[0]);
          searchContent += article;
        });
      } else {
        searchContent = noResultTemplate;
      }
      
      searchContent = '<div id="content" class="content" ><section class="search-result posts">' 
                      + searchContent + '</section></div>';
      return searchContent;
    }
  }
})();

$(document).ready(function () {
  Even.search();
});
