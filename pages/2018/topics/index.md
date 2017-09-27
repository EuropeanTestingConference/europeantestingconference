---
permalink: /2018/topics/
year: 2018
layout: index-2018
---

{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}

<div class="container" id="topics">
  <section class="main-content text-center" id="topic-keynotes">

  <!--<h2>High-Level Schedule</h2><img src="/images/2018/CondencedSchedule.png"> -->


<h2>Keynotes</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == true %}
 {% include 2018/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

  <section class="main-content text-center" id="topic-workshops"><h2>Workshops</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.workshop == true %}
 {% include 2018/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

<section class="main-content text-center" id="topic-talks"><h2>Talks</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.talk == true %}
{% include 2018/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

<section class="main-content text-center" id="topic-talks"><h2>Demo-Talks</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.demo-talk == true %}
{% include 2018/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>

<section class="main-content text-center" id="topic-talks"><h2>Activities</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.Activity == true %}
{% include 2018/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}
</section>
</div>
