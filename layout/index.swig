{% extends "_layout.swig" %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/archive.swig' as archive_template %}

{% block title %} {{ config.title }} {% endblock %}

{% block content %}
  {% set mode = theme.mode.toLowerCase() %}
  <section id="posts" class="posts">
    {% if mode == 'default' %}
      {% for post in page.posts %}
        {{ post_template.render(post) }}
      {% endfor %}
      {% include "_partial/pagination.swig" %}
    {% else %}
      {{ archive_template.render() }}
    {% endif %}
  </section>
{% endblock %}
