{% if theme.leancloud.app_id and theme.leancloud.app_key %}
  <script src="//cdn1.lncld.net/static/js/3.1.1/av-min.js"></script>
  <script id="leancloud">
    AV.init({
      appId: "{{ theme.leancloud.app_id }}",
      appKey: "{{ theme.leancloud.app_key }}"
    });
  </script>
{% endif %}

