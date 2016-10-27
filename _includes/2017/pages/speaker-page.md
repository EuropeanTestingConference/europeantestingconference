{% assign speaker = include.speaker %}
<section class="main-content text-center speaker fix-anchor" id="{{ speaker.id }}">
	<article>

	<div class="image col-md-3 col-sm-4">
		<div class="image-holder">
			<img src="{{speaker.image}}"/>
		</div>
	</div>

	{% if speaker.slideshare == true %}
	{% endif %}
	<div class="info col-md-9 col-sm-8">
		<h3 class="name">{{ speaker._name }}</h3>

        {% assign my_array = "/2017/topics/|/2017/trainings/" | split: "|" %}
        {%  for talk in my_array %}
            {% capture url_for_talk %}{{ talk }}#{{ speaker.id }}{% endcapture %}
            {% capture snippet_path_for_talk %}{{ talk }}snippets/{{ speaker.id }}.md{% endcapture %}
            {% include 2017/pages/speakers/link_to_talks.md url_for_talk=url_for_talk snippet_path_for_talk=snippet_path_for_talk %}
        {% endfor %}

        {% for talk in speaker.talks %}
            {% capture url_for_talk %}/2017/trainings#{{ talk.id }}{% endcapture %}
            {% capture snippet_path_for_talk %}/2017/trainings/snippets/{{ talk.id }}.md{% endcapture %}
            {% include 2017/pages/speakers/link_to_talks.md url_for_talk=url_for_talk snippet_path_for_talk=snippet_path_for_talk %}
        {% endfor %}

		<div class="own-words">
	 		{{ speaker.content  || markdownify }}
		{% if speaker.twitter %}
			<p class="twitter">
				<a href="https:/twitter.com/{{ speaker.twitter }}"><img src="/images/twitter.png"> {{ speaker.twitter }}</a>
			</p>
	  	{% endif %}
	  	</div>
   	</div>


 	</article>
</section>
