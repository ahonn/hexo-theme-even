<div class="logo-wrapper">
  <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
</div>

<nav class="site-nav">
  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item">
          <a class="menu-item-link" href="{{ url_for(path) }}">
            {{ __('menu.' + itemName) }}
          </a>
        </li>
      {% endfor %}
      {% if theme.search %}
        <li class="menu-search">
          <form>
            <i class="fa fa-search" id="open-search"></i>
            <input type="text" class="search-input" />
            <i class="fa fa-times" id="close-search"></i>
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
      {% set itemName = name.toLowerCase() %}
      <a class="mobile-menu-item" href="{{ url_for(path) }}">
        {{ __('menu.' + itemName) }}
      </a>
    {% endfor %}
  </nav>
</div>