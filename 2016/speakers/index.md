---
layout: sub-page
---

{% assign speakers = site.speakers | sort: order_no  %}

<div class="container speakers" id="keynote-speakers">
{% for speaker in speakers %}
	
	{% if speaker.keynote == true %}
  {% include pages/speaker-page.md speaker=speaker %}
	{% endif %}

{% endfor %}
</div>
<div class="container speakers"  id="speakers">
{% for speaker in speakers %}
	
	{% if speaker.keynote == false %}
  {% include pages/speaker-page.md speaker=speaker %}
	{% endif %}

{% endfor %}
</div>
