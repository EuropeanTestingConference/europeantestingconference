---
layout: news_archive 
contained: true
---

<h2 class="b-page-title">News Archive</h2>
{% for post in site.posts limit: 3 %}
  <article class="news">
    <hgroup>
      <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
      <p class="writer">{{ post.date | date_to_string }} / {{ post.author }}</p>
    </hgroup>
    {{ post.content }}
 </article>
{% endfor %}

{% for post in site.posts offset: 3 %}
  <article class="news">
    <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
    <p class="writer">{{ post.date | date_to_string }} / {{ post.author }}</p>
  </article>
{% endfor %}