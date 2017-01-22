<div class="logo-wrapper">
  <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
</div>

<nav class="site-nav">
  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        <li class="menu-item">
          <a class="menu-item-link" href="{{ url_for(path) }}">
            {% set itemName = 'menu.' + name.toLowerCase() %}
            {% if itemName.startsWith('menu') %}
              {{ name }}
            {% else %}
              {{ __(itemName) }}
            {% endif %}
          </a>
        </li>
      {% endfor %}
      {% if theme.search %}
        <li class="menu-search">
          <form>
            <i class="iconfont icon-search" id="open-search"></i>
            <input type="text" class="search-input" id="search-input" />
            <i class="iconfont icon-close" id="close-search"></i>
          </form>
        </li>
      {% endif %}
    </ul>
  {% endif %}
</nav>

<div class="mobile-navbar">
  <div class="mobile-header">
    <div class="mobile-header-logo">
      <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
    </div>

    <div class="mobile-header-icon">
      <span></span>
      <span></span>
      <span></span>
    </div>
  </div>
  <nav class="mobile-menu">
    {% for name, path in theme.menu %}
      <a class="mobile-menu-item" href="{{ url_for(path) }}">
        {% set itemName = 'menu.' + name.toLowerCase() %}
        {% if itemName.startsWith('menu') %}
          {{ name }}
        {% else %}
          {{ __(itemName) }}
        {% endif %}
      </a>
    {% endfor %}
  </nav>
</div>