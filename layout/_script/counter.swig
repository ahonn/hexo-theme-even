{%- if theme.leancloud.app_id and theme.leancloud.app_key -%}
  <script src="//code.bdstatic.com/npm/leancloud-storage@3.1.1/dist/av-min.js"></script>
  <script id="leancloud">
    AV.init({
      appId: "{{ theme.leancloud.app_id }}",
      appKey: "{{ theme.leancloud.app_key }}"
    });
  </script>
{%- endif -%}

