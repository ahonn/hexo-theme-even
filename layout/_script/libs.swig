{%
  set js_libs = [
    'jquery.js'
  ]
%}

{% for lib in js_libs %}
  <script type="text/javascript" src="{{ url_for('js/lib') }}/{{ lib }}?v={{ theme.version }}"></script>
{% endfor %}