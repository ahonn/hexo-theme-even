{% extends "_layout.swig" %}

{% block title %} {{ page.title }} · {{ config.title }} {% endblock %}

{% block content %}
  <article class="post">
    <div class="post-content">
      {{ page.content }}
    </div>
  </article>
{% endblock %}
