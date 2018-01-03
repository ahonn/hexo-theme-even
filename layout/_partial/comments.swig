{% if page.comments and not is_home() %}
  <div class="comments" id="comments">
    {% if theme.disqus_shortname %}
      <div id="disqus_thread">
        <noscript>
          Please enable JavaScript to view the
          <a href="//disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
      </div>
    {% elif theme.livere_datauid %}
      <div id="lv-container" data-id="city" data-uid="{{ theme.livere_datauid }}">
        <noscript>为正常使用来必力评论功能请激活JavaScript</noscript>
      </div>  
    {% endif %}
  </div>
{% endif %}
