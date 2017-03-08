{% set themeConfig = theme.theme %}
{% set searchPath = config.search.path || 'search.xml' %}
<script>
  var CONFIG = {
    search: {{themeConfig.search}},
    searchPath: "{{url_for(searchPath)}}",
    fancybox: {{themeConfig.fancybox}},
    toc: {{themeConfig.toc}},
  }
</script>
