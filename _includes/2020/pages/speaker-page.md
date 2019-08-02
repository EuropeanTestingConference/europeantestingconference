{% assign speaker = include.speaker %}
<article class="b-speaker anchor" id="{{ speaker.id }}">
	<div class="b-speaker__image ">
		<div class="b-image-holder">
			<img class="b-image-holder__img" src="{{speaker.image}}"/>
		</div>
	</div>
	{% if speaker.slideshare == true %}
	{% endif %}
	<div class="b-speaker__info ">
		<h3 class="name">{{ speaker._name }}</h3>
		{% if speaker.twitter %}
			<div class="b-speaker__twitter">
			<a href="https://twitter.com/{{ speaker.twitter }}"><img class="b-speaker__twitter-img" src="/images/twitter.png"> {{ speaker.twitter }}</a>
			</div>
		{% endif %}
		{% if speaker.mastodon %}
			<div class="b-speaker__twitter">
			<a href="https://toot.thoughtworks.com/@{{ speaker.mastodon }}"><img class="b-speaker__twitter-img" src="/images/mastodon.png"> {{ speaker.mastodon }}</a>
			</div>
		{% endif %}
		{% include 2020/pages/speakers/all_talks.md speaker=speaker %}
   	</div>
	<div class="b-speaker__bio ">
		<div class="b-speaker__description">
	 		{{ speaker.content  || markdownify }}
	  	</div>
   	</div>


</article>
