{% macro render() %}
  <section id="archive" class="archive">
    {% if not page.prev %}
      {% if page.tag %}
        <div class="archive-title tag">
          <h2 class="archive-name">{{ page.tag }}</h2>
        </div>
      {% elif page.category %}
        <div class="archive-title category">
          <h2 class="archive-name">{{ page.category }}</h2>
        </div>
      {% elif page.archive %}
        <div class="archive-title">
          <span class="archive-post-counter">
            {{ _p("counter.archives", site.posts.length) }}
          </span>
        </div>
      {% endif %}
    {% endif %}

    {% for post in page.posts %}
      {% if page.archive %}
        {% set year %}
        {% set post.year = date(post.date, 'YYYY') %}

        {% if post.year !== year %}
          {% set year = post.year %}
          <div class="collection-title">
            <h2 class="archive-year">{{ year }}</h2>
          </div>
        {% endif %}
      {% endif %}
      
      <div class="archive-post">
        <span class="archive-post-time">
          {% if page.archive %}
            {{ date(post.date, 'MM-DD') }}
          {% else %}
            {{ date(post.date, 'YYYY-MM-DD') }}
          {% endif %}
        </span>
        <span class="archive-post-title">
          <a href="{{ url_for(post.path) }}" class="archive-post-link">
            {{ post.title }}
          </a>
        </span>
      </div>
    {% endfor %}
  </section>

  {% include '../_partial/pagination.swig' %}
{% endmacro %}
