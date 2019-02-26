{% if theme.valine.appid and theme.valine.appkey %}
<!-- valine Comments -->
<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
<script src='//unpkg.com/valine/dist/Valine.min.js'></script>
<script type="text/javascript">
    new Valine({
        el: '#vcomments',
        notify: {{ theme.valine.notify }},
        verify: {{ theme.valine.verify }},
        app_id: "{{ theme.valine.appid }}",
        app_key: "{{ theme.valine.appkey }}",
        placeholder: "{{ theme.valine.placeholder }}",
        avatar: '{{ theme.valine.avatar }}'
    });
</script>
{% endif %}