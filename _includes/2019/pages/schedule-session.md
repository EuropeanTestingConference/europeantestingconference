{% assign sessionId = include.session %}
{% capture session %}2019/topics/snippets/{{ sessionId }}.md{% endcapture %}
{% assign blank = '' %}
{% for page in site.pages %}
    {% if page.path contains session %}
        <a href="/2019/topics/#{{ page.id }}" class="b-talk">
        {% if page.speaker == nil %}
        {% else %}
            <span class="b-talk__speaker"> {{ page.speaker }}</span>
        {% endif %}
            <span class="b-talk__title"> {{ page.title  }}</span>
            <span class="b-talk__category"> ({{ page.topic-category }})</span>
        </a>
    {% endif %}
{% endfor %}
