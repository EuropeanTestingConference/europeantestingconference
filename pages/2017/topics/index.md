---
permalink: /2017/topics
year: 2017
layout: 2017/sub-page
---
{% capture snippet_path %}{{ page.permalink }}/snippets/{% endcapture %}

<div class="container" id="topics">



<section class="main-content text-center" id="topic-keynotes">
<h2>Keynotes</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>
<section class="main-content text-center" id="topic-workshops">
<h2>Workshops</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.workshop == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>
<section class="main-content text-center" id="topic-talks">
<h2>Talks</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.talk == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

<section class="main-content text-center" id="topic-trainings">
<h2>Pre-conference Trainings</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.training == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section></div>
