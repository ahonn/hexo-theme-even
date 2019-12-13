{%- if theme.utterances.enable -%}
  <script>
    var container = document.getElementById('utterances-container')
    var script = document.createElement('script')
    script.src = 'https://utteranc.es/client.js'
    script.setAttribute('repo', '{{ theme.utterances.repo }}')
    script.setAttribute('issue-term', '{{ theme.utterances.issueTerm }}')
    script.setAttribute('theme', '{{ theme.utterances.theme }}')
    script.setAttribute('label', '{{ theme.utterances.label }}')
    script.crossorigin = 'anonymous'
    script.async = true

    container.appendChild(script)
  </script>
{%- endif -%}