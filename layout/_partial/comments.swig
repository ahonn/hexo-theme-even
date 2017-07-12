{% if page.comments and not is_home() %}
  <div class="comments" id="comments">
    {% if theme.disqus_shortname %}
      <div id="disqus_thread">
        <noscript>
          Please enable JavaScript to view the
          <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
      </div>
    {% endif %}
  </div>
{% endif %}
