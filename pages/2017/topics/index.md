---
permalink: /2017/topics
year: 2017
redirect_from:
 - "/topics"
 - "/topics/"
layout: 2017/sub-page
---
{% capture snippet_path %}{{ page.permalink }}/snippets/{% endcapture %}

<div class="container" id="topics">

<section class="main-content text-center" id="topic-trainings">
<h2>Pre-Conference Trainings</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.training == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

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
<h2>Workshops (90 minutes)</h2>

<i> Workshops get you to try it out yourself. You will most likely need a computer, at least one for a pair.</i>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.workshop == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

<section class="main-content text-center" id="topic-demotalks">
<h2>Demo Talks (45 minutes)</h2>

<i>Demo talks are sessions, where its like a workshop but happens only on the presenters machine. It shows you through the moves and ideas. You're free to mimic on your own if that helps you learn! </i>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.demotalk == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

<section class="main-content text-center" id="topic-talks">
<h2>Talks (30 min)</h2>
<i>Talks focus on actionable, practical ideas.</i>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.talk == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>
</div>
