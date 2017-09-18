<div id="mobile-navbar" class="mobile-navbar">
  <div class="mobile-header-logo">
    <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
  </div>
  <div class="mobile-navbar-icon">
    <span></span>
    <span></span>
    <span></span>
  </div>
</div>

<nav id="mobile-menu" class="mobile-menu slideout-menu">
  <ul class="mobile-menu-list">
    {% for name, path in theme.menu %}
      <a href="{{ url_for(path) }}">
        <li class="mobile-menu-item">
          {% set itemName = __('menu.' + name.toLowerCase()) %}
          {% if itemName.startsWith('menu') %}
            {{ name }}
          {% else %}
            {{ itemName }}
          {% endif %}
        </li>
      </a>
    {% endfor %}
  </ul>
</nav>
