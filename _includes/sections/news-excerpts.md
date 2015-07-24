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

<p class="call-to-action"><a href="{{ site.baseurl }}/news/">View archive</a></p>