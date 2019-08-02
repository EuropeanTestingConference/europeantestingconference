{% assign topic=include.topic %}

{% if topic.slideshare == true %}
<div class="col-sm-8 slides-enabled topic-info hidden-xs">
{% else %}
<div class="b-topic__info">
{% endif %}

{{ topic.content | markdownify }}
</div>

<div id="{{ topic.id }}-excerpt" class="b-topic__excerpt">

{% if topic.excerpt_length %}
<p>{{ topic.content | markdownify | remove: "<p>" | replace:'</p>','\n' | truncate: topic.excerpt_length, '...' | replace:'\n','</p><p>' }}</p>
{% else %}
<p>{{ topic.content | markdownify | remove: "<p>" | replace:'</p>','\n' | truncate: 150, '...' | replace:'\n','</p><p>' }}</p>
{% endif %}

<a class='show-more-button'>show more</a>
</div>
<div id="{{ topic.id }}-full" class="b-topic__full b-topic__hidden">
<p>{{ topic.content | markdownify }}</p>
<a class='show-less-button'>show less</a>
</div>
