---
order_no: -1
about: "directions"
contained: true
title: "News"
---

<div class="column half">

     <hgroup>
       <h2>News<br>
       <span>the latest buzz</span></h2>
     </hgroup>

 
     {% for post in site.posts limit: 1 %}
       <article class="news">
         <hgroup>
           <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
           <p class="writer">{{ post.date | date_to_string }} / {{ post.author }}</p>
         </hgroup>
         {{ post.content | truncate: 300 }}
         <p class="call-to-action"><a href="{{ post.url }}">Read full article</a></p>
       </article>
     {% endfor %}
 
     {% for post in site.posts limit: 3 offset: 1 %}
       <article class="news">
         <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
         <p class="writer">{{ post.date | date_to_string }} / {{ post.author }}</p>
       </article>
     {% endfor %}
 
     <p class="call-to-action"><a href="/news/">View archive</a></p>
</div>
 
<div class="column half">
     <hgroup>
       <h2>Tweets<br>
       <span>hear what the bird says</span></h2>
     </hgroup>
 
     <div id="tweets"><p style="text-align:center;"><img src="/images/ajax-loader.gif"></p></div>
     <p class="call-to-action"><a href="http://twitter.com/#!/EuroTestingConf">Follow us</a></p>
   </div>