---
permalink: /2017/speakers/
year: 2017
layout: 2017/sub-page
---

{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}

<div class="container speakers" id="keynote-speakers">

<h2>Keynotes</h2>
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == true %}
 {% include 2017/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}

</div>
<div class="container speakers"  id="speakers">
<h2>Other Speakers</h2>
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == false %}
  {% include 2017/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}
</div>
