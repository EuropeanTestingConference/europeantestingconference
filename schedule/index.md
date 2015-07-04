---
layout: sub-page
---

<section id="schedule" class="main-content text-center">
	<div class="container">
		
{% include personas.md %}
{% assign days = site.schedule | sort:day_no | reverse  %}
{% include schedule-list.md collection=days %}

	</div>
</section>
