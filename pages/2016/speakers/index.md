---
permalink: /2016/speakers
year: 2016
redirect_from: 
 - "/speakers"
 - "/speakers/"
layout: yearly-sub-page
---

{% capture snippet_path %}{{ page.permalink }}/snippets/{% endcapture %}

<div class="container speakers" id="keynote-speakers">

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == true %}
 {% include pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}

</div>
<div class="container speakers"  id="speakers">
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == false %}
  {% include pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}
</div>


