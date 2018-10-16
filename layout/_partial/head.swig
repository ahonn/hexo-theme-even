{# Website mata #}
{% include "./_head/meta.swig" %}

{# Website rss #}
{% if theme.rss === 'default' and config.feed and config.feed.path %}
  {{ feed_tag(config.feed.path) }}
{% elif theme.rss %}
  {{ feed_tag(theme.rss) }}
{% else %}
  {{ feed_tag('atom.xml') }}
{% endif %}

{# Website favicon #}
{% if theme.favicon %}
  <link rel="shortcut icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}?v={{ theme.version }}" />
{% endif %}

{# Canonical, good for google search engine #}
<link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/>

{# Fancybox styling #}
{% if theme.fancybox %}
  <link rel="stylesheet" type="text/css" href="{{ url_for('lib/fancybox/jquery.fancybox.css') }}" />
{% endif %}

{# Nprogress styling #}
{% if theme.pjax %}
  <link rel="stylesheet" type="text/css" href="{{ url_for('lib/nprogress/nprogress.min.css') }}" />
{% endif %}

{# Theme styling #}
<link rel="stylesheet" type="text/css" href="{{ url_for('css/style.css') }}?v={{ theme.version }}" />

{# Analytics and push #}
{% if not env.debug %}
  {% include "../_script/analytics.swig" %}
  {% include "../_script/push.swig" %}
{% endif %}

{# LeanCloud Counter #}
{% include "../_script/counter.swig"%}

{% set themeConfig = { leancloud: theme.leancloud, toc: theme.toc, fancybox: theme.fancybox, pjax: theme.pjax} %}
<script>
  window.config = {{ JSON.stringify(themeConfig) }};
</script>
