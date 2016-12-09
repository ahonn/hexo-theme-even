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
    </ul>
  {% endif %}
</nav>