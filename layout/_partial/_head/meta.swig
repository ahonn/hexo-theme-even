<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

{# Disable transformation #}
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<meta name="theme-color" content="#f8f5ec" />
<meta name="msapplication-navbutton-color" content="#f8f5ec">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="#f8f5ec">

{# Website description #}
{% if page.description %}
  <meta name="description" content="{{ page.description }}"/>
{% elif page.title %}
  <meta name="description" content="{{ page.title }}"/>
{% elif config.description %}
  <meta name="description" content="{{ config.description }}"/>
{% endif %}

{# Website keywords #}
{% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}" />
{% elif config.keywords %}
  <meta name="keywords" content="{{ config.keywords }}" />
{% elif page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }}, {% endfor %}{{ config.title }}" />
{% endif %}

{% if theme.baidu_verification %}
  <meta name="baidu-site-verification" content="{{ theme.baidu_verification }}" />
{% endif %}

{% if theme.google_verification %}
  <meta name="google-site-verification" content="{{ theme.google_verification }}" />
{% endif %}

