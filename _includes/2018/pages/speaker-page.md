{% assign speaker = include.speaker %}
<section class="main-content text-center speaker fix-anchor" id="{{ speaker.id }}">
	<article>

	<div class="image col-md-3 col-sm-4">
		<div class="image-holder">
			<img src="{{speaker.image}}"/>
		</div>
		{% if speaker.twitter %}
			<div class="twitter">
			<a href="https:/twitter.com/{{ speaker.twitter }}"><img src="/images/twitter.png"> {{ speaker.twitter }}</a>
			</div>
		{% endif %}
	</div>

	{% if speaker.slideshare == true %}
	{% endif %}
	<div class="info col-md-9 col-sm-8">
		<h3 class="name">{{ speaker._name }}</h3>

        {% include 2018/pages/speakers/all_talks.md speaker=speaker %}

			<div class="own-words">
	 		{{ speaker.content  || markdownify }}
	  	</div>
   	</div>


 	</article>
</section>
