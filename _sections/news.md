---
order_no: 3
about: "directions"
contained: true
title: "News"
---

<div class="column half">

     <hgroup>
       <h2>News<br>
   <span></span></h2> 
     </hgroup>


     {% for post in site.posts limit: 1 %}
       <article class="news">
         <hgroup>
           <h3><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h3>
           <p class="writer">{{ post.date | date_to_string }} / {{ post.author }}</p>
         </hgroup>
         {{ post.content | truncate: 300 }}
         <p class="call-to-action"><a href="{{ site.baseurl }}{{ post.url }}">Read full article</a></p>
       </article>
     {% endfor %}

     {% for post in site.posts limit: 3 offset: 1 %}
       <article class="news">
         <h3><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h3>
         <p class="writer">{{ post.date | date_to_string }} / {{ post.author }}</p>
       </article>
     {% endfor %}

     <p class="call-to-action"><a href="/news/">View archive</a></p>
</div>

<div class="column half">
	<hgroup>
	 <h2>Tweets<br>
	 <span></span>
	</h2>
	</hgroup>

	<div id="tweets">
	 <a class="twitter-timeline" href="https://twitter.com/EuroTestingConf" data-widget-id="624185830425366529">Tweets by @EuroTestingConf</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
	</div>
</div>
