---
layout: sub-page
---
{% assign topics = site.topics  %}

<div class="container" id="topics">

<section class="main-content text-center" id="topic-keynotes">
<h2>Keynotes</h2>
{% for topic in topics %}

  {% if topic.keynote%}
  {% include topic-page.html topic=topic %}
  {% endif %}
{% endfor %}
</section>
<section class="main-content text-center" id="topic-workshops">
<h2>Workshops</h2>
{% for topic in topics %}
  {% if topic.workshop %}
  {% include topic-page.html topic=topic %}
  {% endif %}
{% endfor %}
</section>
<section class="main-content text-center" id="topic-talks">
<h2>Talks</h2>
{% for topic in topics %}

  {% if topic.talk %}
  {% include topic-page.html topic=topic %}
  {% endif %}

{% endfor %}
</section>
</div>
