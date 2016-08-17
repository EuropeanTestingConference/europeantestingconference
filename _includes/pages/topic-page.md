{% assign topic=include.topic %}

<article class="topic" id="{{ topic.id }}">
	<h3 class="title"><a href="/speakers#{{ topic.id }}">{{topic.speaker}}</a> - {{ topic.title }}</h3>

	{% if topic.slideshare == true %}
    {% include pages/topic-slides-slideshare.md topic=topic %}
	{% endif %}

	{% include pages/topic-output.md topic=topic %}

</article>