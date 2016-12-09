{% if not is_post() %}
  <nav class="pagination">
    {% if page.prev %}
      <a class="prev" href="{{ url_for(page.prev_link) }}">
        <i class="iconfont icon-left"></i>
        <span class="prev-text">{{ __('posts.prev') }}</span>
      </a>
    {% endif %}
    {% if page.next %}
      <a class="next" href="{{ url_for(page.next_link) }}">
        <span class="next-text">{{ __('posts.next') }}</span>
        <i class="iconfont icon-right"></i>
      </a>
    {% endif %}
  </nav>
{% else %}
  <nav class="post-nav">
    {% if page.prev.path %}
      <a class="prev" href="{{ url_for(page.prev.path) }}">
        <i class="iconfont icon-left"></i>
        <span class="prev-text nav-default">{{ page.prev.title }}</span>
        <span class="prev-text nav-mobile">{{ __('posts.prev_post') }}</span>
      </a>
    {% endif %}
    {% if page.next.path %}
      <a class="next" href="{{ url_for(page.next.path) }}">
        <span class="next-text nav-default">{{ page.next.title }}</span>
        <span class="prev-text nav-mobile">{{ __('posts.next_post') }}</span>
        <i class="iconfont icon-right"></i>
      </a>
    {% endif %}
  </nav>
{% endif %}