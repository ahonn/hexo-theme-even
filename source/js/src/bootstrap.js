$(document).ready(function () {
  Even.backToTop();
  Even.mobileNavbar();

  CONFIG.toc && Even.toc();
  CONFIG.fancybox && Even.fancybox();
});
