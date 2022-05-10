{%- if theme.leancloud.app_id and theme.leancloud.app_key and theme.leancloud.server_url -%}
  <script src="{{ theme.leancloud.cdn || '//unpkg.com/leancloud-storage@4.12.2/dist/av-min.js' }}"></script>
  <script id="leancloud">
    AV.init({
      appId: "{{ theme.leancloud.app_id }}",
      appKey: "{{ theme.leancloud.app_key }}",
      serverURL: "{{ theme.leancloud.server_url }}"
    });
  </script>
{%- endif -%}
