{% if page.comments and not is_home() %}
  <div class="comments" id="comments">
    {% if theme.disqus_shortname %}
      <div id="disqus_thread">
        <noscript>
          Please enable JavaScript to view the
          <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
      </div>
    {% elif theme.duoshuo_shortname %}
      <div class="ds-thread" data-thread-key="{{ page.path }}"
           data-title="{{ page.title }}" data-url="{{ page.permalink }}">
      </div>
    {% elif theme.netease_key %}
      <div id="cloud-tie-wrapper" class="cloud-tie-wrapper"></div>
    {% endif %}
  </div>
{% endif %}
