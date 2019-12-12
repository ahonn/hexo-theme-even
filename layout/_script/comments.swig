{%- if !is_home() and !is_archive() -%}
  {%- include "_comments/disqus.swig" -%}
  {%- include "_comments/changyan.swig" -%}
  {%- include "_comments/livere.swig" -%}
  {%- include "_comments/gitalk.swig" -%}
  {%- include "_comments/utterances.swig" -%}
{%- endif -%}
