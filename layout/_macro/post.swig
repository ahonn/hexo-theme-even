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
          {{ full_date(post.date, 'YYYY-MM-DD') }}
        </span>
        {% if post.categories and post.categories.length %}
          <div class="post-category">
            {% for category in post.categories %}
              <a href="{{ url_for(category.path) }}">{{ category.name }}</a>
            {% endfor %}
          </div>
        {% endif %}
      </div>
    </header>

    {# Post TOC #}
    {% include "../_partial/_post/toc.swig" %}

    <div class="post-content">
      {% if is_home() %}
        {% set excerpt = "" %}
        {% if post.description %}
          {% set excerpt = '<p>' + post.description + '</p>' %}
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

    {% if not is_home() %}
      {# Post Copyright #}
      {% include "../_partial/_post/copyright.swig" %}

      {# Reward #}
      {% include "../_partial/_post/reward.swig" %}
    {% endif %}

    {% if not is_home() %}
      <footer class="post-footer">
        {% if post.tags and post.tags.length %}
          <div class="post-tags">
            {% for tag in post.tags %}
              <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
            {% endfor %}
          </div>
        {% endif %}
        {# Post Pagination #}
        {% include "../_partial/pagination.swig" %}
      </footer>
    {% endif %}

  </article>
{% endmacro %}
