---
layout: sub-page
---

{% assign speakers = site.speakers  %}

<div class="container" id="speakers">
{% for speaker in speakers %}

  {% include pages/speaker-page.md speaker=speaker %}

{% endfor %}
</div>
