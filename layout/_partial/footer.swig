{% if theme.social %}
  <div class="social-links">
    {% for name, path in theme.social %}
      {% if path %}
        {% if name != 'email' %}
          <a href="{{ url_for(path) }}" class="iconfont icon-{{ name }}" title="{{ name }}"></a>
        {% else %}
          <a href="mailto:{{ path }}" class="iconfont icon-{{ name }}" title="{{ name }}"></a>
        {% endif %}
      {% endif %}
    {% endfor %}
    
    {% if config.feed and config.feed.path and theme.rss === 'default' %}
      <a href="{{ url_for(config.feed.path) }}" class="iconfont icon-rss" title="rss"></a>
    {% elif theme.rss === 'default' %}
      <a href="{{ url_for('atom.xml') }}" class="iconfont icon-rss" title="rss"></a>
    {% elif theme.rss %}
      <a href="{{ url_for(theme.rss) }}" class="iconfont icon-rss" title="rss"></a>
    {% endif %}
  </div>
{% endif %}

<div class="copyright">
  <span class="power-by">
    {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a>') }}
  </span>
  
  <span class="theme-info">
    {{ __('footer.theme') }} - 
    <a class="theme-link" href="https://github.com/ahonn/hexo-theme-even">Even</a>
  </span>

  <span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
    &copy; 
    {% if theme.since and theme.since != current %} 
      {{ theme.since }} - 
    {% endif %}
    {{ current }}

    <span class="heart">
      <i class="iconfont icon-heart"></i>
    </span>
    <span class="author">{{ config.author }}</span>
  </span>
</div>