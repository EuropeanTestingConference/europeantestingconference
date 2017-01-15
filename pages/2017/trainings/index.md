---
permalink: /2017/trainings/
year: 2017
layout: 2017/sub-page
---
{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}

<div class="container" id="trainings">

<section class="main-content text-center" id="topic-trainings">
<h2>Pre-conference Trainings</h2>

<img src="/images/2017/Trainings.png" alt = "Trainings summary" width="90%">

<div style="font-size:xx-large">
<input type="button" onclick="location.href='https://holvi.com/shop/ETC2017/';" value="Buy a ticket here" style="
    background-color: #12bd12;
    color: white;
    border-radius: 15px;
    font: bold 10pt verdana;
    border: none;
    padding: 10px;
">
</div>

<i>You can purchase a ticket to a training separately, or join trainings as part of your conference package. If you already purchased a ticket, <a href="mailto:contact@europeantestingconference.eu"> get in touch</a> for our extension model to update your package with a good price.</i>

<hr>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.training == true %}
 {% include 2017/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section></div>
