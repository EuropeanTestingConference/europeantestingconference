---
redirect_from: 
 - "/volunteers"
 - "/volunteers/"
layout: yearly-sub-page
contained: true
---

{% assign volunteers = site.volunteers  %}

{% for volunteer in volunteers %}

  {% include pages/volunteer-page.md volunteer=volunteer %}

{% endfor %}

