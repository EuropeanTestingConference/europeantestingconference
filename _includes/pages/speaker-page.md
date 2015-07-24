{% assign participant=include.participant %}

<section class="main-content text-center participant" id="{{ participant.id }}">
	<article>
		<h3 class="name">{{ participant.name }}</h3>

<div class="participant-info">
	<div class="image left">
		<img src="{{participant.image}}"/>
	</div>
	<div class="info left">
		{% if participant.twitter %}
		<p class="twitter">
			<a href="https:/twitter.com/{{ participant.twitter }}">@{{ participant.twitter }}</a>
		</p> 
	  	{% endif %}
	  	{% if participant.blog %}
		<p class="blog">
	   		<a href="{{ participant.blog }}">{{ participant.blog }}</a>
		</p> 
	  	{% endif %}
		<div class="own-words">
	 		{{ participant.output  }}
	  	</div> 
   	</div>
</div>
 	</article>
</section>

