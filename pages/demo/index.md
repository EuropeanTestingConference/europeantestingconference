---
permalink: /demo/
year: demo
layout: index-2018
---

{% capture sections_path %}{{ page.permalink }}sections/{% endcapture %}

{% for page in site.pages %}
{% if page.path contains sections_path %}
<section id="etc_2018_{{ page.about }}"  class="b-section">
    <h3 class="b-section__title">{{ page.title }}</h3>
       {{ page.content | markdownify }}
</section>
{% endif %}
{% endfor %}
