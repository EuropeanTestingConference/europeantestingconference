---
permalink: /2018/
year: 2018
layout: index-2018
---

{% capture sections_path %}{{ page.permalink }}sections/{% endcapture %}

{% for page in site.pages %}
{% if page.path contains sections_path %}
<section id="etc_2018_{{ page.about }}"  class="b-section b-section_{{ page.section_type }}">
  <div class="b-{{ page.type }}">
    {% if page.title %}
    <h3 class="b-section__title">{{ page.title }}</h3>
    {% endif %} 
       {{ page.content | markdownify }}
  </div>
</section>
{% endif %}
{% endfor %}
