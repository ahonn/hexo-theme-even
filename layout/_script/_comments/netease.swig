{% if theme.netease_key %}
  <script>
    var cloudTieConfig = {
      url: document.location.href, 
      sourceId: "",
      productKey: "{{theme.netease_key}}",
      target: "cloud-tie-wrapper"
    };
  </script>
  <script src="https://img1.cache.netease.com/f2e/tie/yun/sdk/loader.js"></script>
{% endif %}
