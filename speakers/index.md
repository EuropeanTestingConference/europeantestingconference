---
layout: sub-page
---

{% assign speakers = site.speakers  %}

{% for speaker in speakers %}

  {% include pages/speaker-page.md speaker=speaker %}

{% endfor %}
