---
layout: sub-page
---

{% assign speakers = site.speakers  %}

{% for speaker in speakers %}

  {% include participant-page.md participant=speaker %}

{% endfor %}
