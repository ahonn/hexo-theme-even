{% if theme.theme.search %}
  <script type="text/html" id="search-result">
    <article class="post">
      <header class="post-header">
        <h1 class="post-title">
          <a href="$url$" class="post-link">
            $title$
          </a>
        </h1>
      </header>
      <div class="post-content">
        $content$
        <div class="read-more">
          <a href="$url$" class="read-more-link">
            {{ __('posts.readmore') }}
          </a>
        </div>
      </div>
    </article>
  </script>
  <script type="text/html" id="no-search-result">
    <div class="no-result">
      <h2>No result found!</h2>
    </div>
  </script>
  <script type="text/javascript" src="{{ url_for('js/src') }}/search.js?v={{ theme.version }}"></script>
{% endif %}