{% assign volunteer=include.volunteer %}

<section class="main-content text-center participant" id="{{ participant.id }}">
	<article>
		<h3 class="name">{{ volunteer.name }}</h3>

<div class="participant-info">
	<div class="image left">
		<img src="{{volunteer.image}}"/>
	</div>
	<div class="info left">
		{% if volunteer.twitter %}
		<p class="twitter">
			<a href="https:/twitter.com/{{ participant.twitter }}">@{{ volunteer.twitter }}</a>
		</p> 
	  	{% endif %}
	  	{% if volunteer.blog %}
		<p class="blog">
	   		<a href="{{ participant.blog }}">{{ volunteer.blog }}</a>
		</p> 
	  	{% endif %}
		<div class="own-words">
	 		{{ volunteer.output  }}
	  	</div> 
   	</div>
</div>
 	</article>
</section>

