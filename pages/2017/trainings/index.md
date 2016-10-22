---
permalink: /2017/trainings/
year: 2017
layout: 2017/sub-page
---
{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}

<div class="container" id="trainings">

<section class="main-content text-center" id="topic-trainings">
<h2>Pre-conference Trainings</h2>

<img src="/images/2017/Trainings.png" alt = "Trainings summary">

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.training == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section></div>
