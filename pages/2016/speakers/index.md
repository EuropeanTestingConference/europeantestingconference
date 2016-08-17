---
permalink: /2016/speakers
year: 2016
redirect_from: 
 - "/speakers"
 - "/speakers/"
layout: yearly-sub-page
---

{% assign speakers = site.snippets | sort: order_no  %}

{% capture speakers_path  %}_snippets/2016/speakers/{% endcapture %}
<div class="container speakers" id="keynote-speakers">
{% for speaker in speakers %}
  {% if speaker.relative_path contains speakers_path %}
	
  
	{% if speaker.keynote == true %}
    {% include pages/speaker-page.md  %}
	{% endif %}
	{% endif %}

{% endfor %}
</div>
<div class="container speakers"  id="speakers">
{% for speaker in speakers %}
	
  {% if speaker.relative_path contains speakers_path %}
	{% if speaker.keynote == false %}
  {% include pages/speaker-page.md %}
	{% endif %}
	{% endif %}

{% endfor %}
</div>


