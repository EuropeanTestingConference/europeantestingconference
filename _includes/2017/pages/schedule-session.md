{% assign sessionId = include.session %}
{% capture session %}2017/topics/snippets/{{ sessionId }}.md{% endcapture %}
{% assign blank = '' %}
  {% for page in site.pages %}
      {% if page.path contains session %}
      <h3>
        <a href="/2017/topics/#{{ page.id }}">
          {% if page.speaker == nil %}
          {% else %}
             <span class="name"> {{ page.speaker }}</span> <br />
          {% endif %}
          {{ page.title  }}
        </a>
      </h3>
        {% endif %}
  {% endfor %}
