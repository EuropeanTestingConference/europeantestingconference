
{% for volunteer in include.volunteers %}
  {% include sections/volunteer-list-item.md volunteer=volunteer %}
{% endfor %}
