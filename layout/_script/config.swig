{% set searchPath = config.search.path || 'search.xml' %}
{% set themeConfig = theme.theme %}
<script type="text/javascript">
  var themeConfig = {
    search: {
      enable: {{themeConfig.search}},
      path: "{{searchPath}}",
    },
    navbar: {
      enable: {{themeConfig.navbar}}
    },
    fancybox: {
      enable: {{themeConfig.fancybox}}
    },
    toc: {
      enable: {{themeConfig.toc}}
    },
  };
</script>