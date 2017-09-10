{# Post Copyright #}
{% if theme.copyright.enable and page.copyright !== false %}
  <div class="post-copyright">
    <p class="copyright-item">
      <span>{{ __('copyright.author') + ': ' }}</span>
      <a href="{{ config.url }}">{{ config.author }}</a>
    </p>
    <p class="copyright-item">
      <span>{{ __('copyright.link') + ': ' }}</span>
      <a href="{{ page.permalink }}">{{ page.permalink }}</a>
    </p>
    <p class="copyright-item">
      <span>{{ __('copyright.license') + ': ' }}</span>
      {% set lincese = page.lincese || theme.copyright.license %}
      {{ lincese }}
    </p>
  </div>
{% endif %}
