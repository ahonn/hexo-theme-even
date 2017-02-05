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
      {% set rss_link = config.feed.path || 'atom.xml' %}
      <a href="{{ url_for(rss_link) }}" class="iconfont icon-rss" title="rss"></a>
    {% elif theme.rss %}
      <a href="{{ url_for(theme.rss) }}" class="iconfont icon-rss" title="rss"></a>
    {% endif %}
  </div>
{% endif %}