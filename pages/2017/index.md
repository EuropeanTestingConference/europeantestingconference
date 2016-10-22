---
permalink: /2017/
year: 2017
redirect_from:
 - /
layout: index
title: "European Testing Conference 2017"
sub_title: "Helsinki, Finland February 8-10th 2017 at Wanha Satama"
---


{% capture sections_path %}{{ page.permalink }}sections/{% endcapture %}

{% for page in site.pages %}
{% if page.path contains sections_path %}
<section id="{{ page.about }}"  class="col-md-12 main-content text-center {% if page.class
                              %}{{ page.class }}{% endif %}"
>
    <h2>{{ page.title }}</h2>
  {{ page.content || markdownify }}
</section>
{% endif %}
{% endfor %}
