{%- if theme.leancloud.app_id and theme.leancloud.app_key -%}
  <script src="//rawforcorvofeng.cn/leancloud-storage%404.12.2/dist/av-min.js"></script>
  <script id="leancloud">
    AV.init({
      serverURL: "{{ theme.leancloud.serverURL}}",
      appId: "{{ theme.leancloud.app_id }}",
      appKey: "{{ theme.leancloud.app_key }}"
    });
  </script>
{%- endif -%}
