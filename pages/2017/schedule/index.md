---
year: 2017
permalink: /2017/schedule/
layout: 2017/sub-page
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
