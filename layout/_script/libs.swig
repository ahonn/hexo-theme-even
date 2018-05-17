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

{% if theme.theme.pjax %}
  <script src="https://cdn.bootcss.com/jquery.pjax/2.0.1/jquery.pjax.min.js"></script>
  <script src="https://cdn.bootcss.com/nprogress/0.2.0/nprogress.min.js"></script>
{% endif %}
