{% if !is_home() and !is_archive() %}
  {% include "_comments/disqus.swig" %}
{% endif %}
