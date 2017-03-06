{% set themeConfig = theme.theme %}
{% set searchPath = config.search.path || 'search.xml' %}
{% set searchConfig = themeConfig.search ? searchPath : '' %}
<script>
  var CONFIG = {
    search: {{searchConfig}},
    fancybox: {{themeConfig.fancybox}},
    toc: {{themeConfig.toc}},
  }
</script>
