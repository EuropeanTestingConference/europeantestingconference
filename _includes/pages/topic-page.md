{% assign topic=include.topic %}

<article class="topic" id="{{ topic.id }}">
	<h3 class="title"><a href="/speakers#{{ topic.id }}">{{topic.speaker}}</a> - {{ topic.title }}</h3>

	{% if topic.slideshare == true %}
    {% include pages/topic-slides-slideshare.md topic=topic %}
	<div class="col-sm-8 slides-enabled topic-info">
	{% else %}
	<div class="col-sm-12 topic-info">
	{% endif %}
	{{ topic.output }}
	</div>
</article>