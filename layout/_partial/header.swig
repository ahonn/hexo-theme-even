<div class="logo-wrapper">
  <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
</div>

<nav class="site-navbar">
  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        <li class="menu-item">
          <a class="menu-item-link" href="{{ url_for(path) }}">
            {% set itemName = __('menu.' + name.toLowerCase()) %}
            {% if itemName.startsWith('menu') %}
              {{ name }}
            {% else %}
              {{ itemName }}
            {% endif %}
          </a>
        </li>
      {% endfor %}
    </ul>
  {% endif %}
</nav>
