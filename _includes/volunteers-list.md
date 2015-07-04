
{% for volunteer in include.volunteers %}
  {% include volunteer-list-item.md volunteer=volunteer %}
{% endfor %}
