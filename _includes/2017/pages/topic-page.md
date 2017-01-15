{% assign topic=include.topic %}

<article class="topic" id="{{ topic.id }}">
	<h3 class="title"><a href="/2017/speakers#{{ topic.id }}">{{topic.speaker}}</a> - {{ topic.title }}</h3>
	{% if page.training == true %}
	<input type="button" onclick="location.href='https://holvi.com/shop/ETC2017/product/430a34a64f1d9e20f57f48a8300247ac/';" value="Buy a ticket here" style="
	    background-color: #12bd12;
	    color: white;
	    border-radius: 15px;
	    font: bold 10pt verdana;
	    border: none;
	    padding: 10px;
	">
	{% endif %}

	{% if topic.slideshare == true %}
    {% include 2017/pages/topic-slides-slideshare.md topic=topic %}
	{% endif %}

	{% include 2017/pages/topic-output.md topic=topic %}

</article>
