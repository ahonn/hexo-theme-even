{% extends "_layout.swig" %}

{% block title %} {{ __('menu.tags') }} - {{ config.title }} {% endblock %}

{% block content %}
  <div class="tag-cloud">
    <div class="tag-cloud-title">
      {{ _p('counter.tagcloud', site.tags.length) }}
    </div>
    <div class="tag-cloud-tags">
      {{ tagcloud({min_font: 16, max_font: 28, amount: 100, orderby: 'count'}) }}
    </div>
  </div>
{% endblock %}
