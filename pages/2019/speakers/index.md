---
permalink: /2019/speakers/
year: 2019
layout: index-2019
---


{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}

<div class="container speakers main-content" id="keynote-speakers">

<!-- <h2 class="b-page-title">Additional speakers to be announced</h2> -->
<h2>Keynotes</h2>
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == true %}
 {% include 2019/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}

</div>
<div class="container speakers"  id="speakers">
<h2>Other Speakers</h2>
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == false %}
  {% include 2019/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}
</div>
