{%
  set js_libs = [
    'jquery/jquery-3.1.1.min.js'
  ]
%}

{% for lib in js_libs %}
  <script type="text/javascript" src="{{ url_for('lib') }}/{{ lib }}"></script>
{% endfor %}