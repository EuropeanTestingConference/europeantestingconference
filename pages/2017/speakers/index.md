---
permalink: /2017/speakers
year: 2017
redirect_from:
 - "/speakers"
 - "/speakers/"
layout: 2017/sub-page
---

{% capture snippet_path %}{{ page.permalink }}/snippets/{% endcapture %}

<div class="container speakers" id="keynote-speakers">

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == true %}
 {% include 2017/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}

</div>
<div class="container speakers"  id="speakers">
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == false %}
  {% include 2017/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}
</div>
