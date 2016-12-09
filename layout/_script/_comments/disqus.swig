{% if theme.disqus_shortname %}
  <script type="text/javascript">
    var disqus_config = function () {
        this.page.url = '{{ page.permalink }}';
        this.page.identifier = '{{ page.path }}';
        this.page.title = '{{ page.title }}';
    };
    (function() {
    var d = document, s = d.createElement('script');

    s.src = '//{{theme.disqus_shortname}}.disqus.com/embed.js';

    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();  
  </script>
{% endif %}