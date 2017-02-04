$(document).ready(function () {
  if (themeConfig.navbar.enable) {
    Even.navbar.register();
  }
  if (themeConfig.search.enable) {
    var searchPath = themeConfig.search.path;
    Even.search.setPath(searchPath);
    Even.search.register();
  }
  if (themeConfig.fancybox.enable) {
    Even.fancybox.register();
  }
  if (themeConfig.toc.enable) {
    Even.toc.register();
  }
  Even.backToTop.register();
});