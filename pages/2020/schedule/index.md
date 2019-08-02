---
year: 2020
permalink: /2020/schedule/
layout: index-2020
---

{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}
<section id="schedule" class="main-content text-center">
	<div class="container">

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{{ page.content }}
{% endif %}
{% endfor %}
	</div>
  <div> <b>please note:</b> this schedule is subject to change </div>
</section>
