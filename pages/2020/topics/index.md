---
permalink: /2020/topics/
year: 2020
layout: index-2020
---

{% capture snippet_path %}{{ page.permalink }}snippets/{% endcapture %}

<div class="container" id="topics">
  <section class="main-content text-center" id="topic-keynotes">

  <!-- <h2>High-Level Schedule</h2><img src="/images/2020/CondencedSchedule.png"> -->

  <h2 class="b-page-title">To be announced...</h2>
  <!-- <h2>Keynotes</h2> -->

  {% for page in site.pages %}
  {% if page.path contains snippet_path %}
  {% if page.keynote == true %}
  {% include 2020/pages/topic-page.md  topic=page%}
  {% endif %}
  {% endif %}
  {% endfor %}

  </section>

  <section class="main-content text-center" id="topic-workshops">
  <!-- <h2>Workshops</h2> -->

  {% for page in site.pages %}
  {% if page.path contains snippet_path %}
  {% if page.workshop == true %}
  {% include 2020/pages/topic-page.md  topic=page%}
  {% endif %}
  {% endif %}
  {% endfor %}

  </section>

  <section class="main-content text-center" id="topic-talks">
  <!-- <h2>Talks</h2> -->

  {% for page in site.pages %}
  {% if page.path contains snippet_path %}
  {% if page.talk == true %}
  {% include 2020/pages/topic-page.md  topic=page%}
  {% endif %}
  {% endif %}
  {% endfor %}

  <!-- </section>

  <section class="main-content text-center" id="topic-talks"><h2>Demo-Talks</h2> -->

  {% for page in site.pages %}
  {% if page.path contains snippet_path %}
  {% if page.demo-talk == true %}
  {% include 2020/pages/topic-page.md  topic=page%}
  {% endif %}
  {% endif %}
  {% endfor %}

  <!-- </section>

  <section class="main-content text-center" id="topic-talks"><h2>Activities</h2> -->

  {% for page in site.pages %}
  {% if page.path contains snippet_path %}
  {% if page.Activity == true %}
  {% include 2020/pages/topic-page.md  topic=page%}
  {% endif %}
  {% endif %}
  {% endfor %}
  <!-- </section> -->
<!-- </div> -->
