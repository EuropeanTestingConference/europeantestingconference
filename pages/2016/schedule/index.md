---
year: 2016
permalink: /2016/schedule
redirect_from: 
 - "/schedule"
 - "/schedule/"
layout: yearly-sub-page
---
{% capture snippet_path %}{{ page.permalink }}/snippets/{% endcapture %}
<section id="schedule" class="main-content text-center">
	<div class="container">
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{{ page.content }}
{% endif %}
{% endfor %}
	</div>
</section>
