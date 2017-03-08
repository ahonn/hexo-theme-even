{% if theme.theme.fancybox %}
  {% set fancybox_js = 'fancybox/jquery.fancybox.pack.js' %}
{% endif %}

{%
  set js_libs = {
    jquery: 'jquery/jquery-3.1.1.min.js',
    slideout: 'slideout/slideout.js',
    fancybox: fancybox_js
  }
%}

{% for lib in js_libs %}
  {% if lib %}
    <script type="text/javascript" src="{{ url_for('lib') }}/{{ lib }}"></script>
  {% endif %}
{% endfor %}
