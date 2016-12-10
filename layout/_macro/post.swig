{% macro render(post) %}
  <article class="post">
    <header class="post-header">
      <h1 class="post-title">
        {% if is_home() %}
          <a class="post-link" href="{{ url_for(post.path) }}">{{ post.title }}</a>
        {% else %}
          {{ post.title }}
        {% endif %}
      </h1>

      <div class="post-meta">
        <span class="post-time">
          {{ full_date(post.date, 'll') }}
        </span>
      </div>
    </header>

    {% if not is_home() and toc(page.content) %}
      <div class="post-toc" id="post-toc">
        <h2 class="post-toc-title">{{ __('posts.toc') }}</h2>
        <div class="post-toc-content">
          {{ toc(page.content, {list_number: false}) }}
        </div>
      </div>
    {% endif %}

    <div class="post-content">
      {% if is_home() %}
        {% if post.description %}
          {% set excerpt = post.description %}
        {% elif post.excerpt %}
          {% set excerpt = post.excerpt %}
        {% endif %}

        {% if excerpt %}
          {{ excerpt }}
          <div class="read-more">
            <a href="{{ url_for(post.path) }}" class="read-more-link">{{ __('posts.readmore') }}</a>
          </div>
        {% else %}
          {{ post.content }}
        {% endif %}
      {% else %}
        {{ post.content }}
      {% endif %}
    </div>

    {% if post.tags and post.tags.length and not is_home() %}
      <footer class="post-footer">
        <div class="post-tags">
          {% for tag in post.tags %}
            <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
          {% endfor %}
        </div>

        {% include "../_partial/pagination.swig" %}
      </footer>
    {% endif %}
  </article>
{% endmacro %}