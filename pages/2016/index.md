---
permalink: /2016/
year: 2016

layout: 2016/index
title: European Testing Conference 2016
sub_title: 'Bucharest, Romania. <em>11-12 February 2016</em> at <a href="https://www.radissonblu.com/en/hotel-bucharest" target="_blank">Radisson Blu, Calea Victoriei 63-81</a>'
---

{% capture schedule_path %}{{ page.permalink }}schedule{% endcapture %}
{% capture snippet_path %}{{ schedule_path }}/snippets/{% endcapture %}

<section id="schedule" class="main-content text-center">
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{{ page.content }}
{% endif %}
{% endfor %}
</section>


{% capture speakers_path %}{{ page.permalink }}speakers{% endcapture %}
{% capture snippet_path %}{{ speakers_path }}/snippets/{% endcapture %}

<div class="speakers" id="keynote-speakers">

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote   %}
 {% include 2016/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}

</div>
<div class="speakers"  id="speakers">
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote == false %}
  {% include 2016/pages/speaker-page.md  speaker=page%}
{% endif %}
{% endif %}
{% endfor %}
</div>

{% assign topics = site.topics  %}

<div class="" id="topics">

{% capture topics_path %}{{ page.permalink }}topics{% endcapture %}
{% capture snippet_path %}{{ topics_path }}/snippets/{% endcapture %}

<section class="main-content text-center" id="topic-keynotes">
<h2>Keynotes</h2>

{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.keynote %}
 {% include 2016/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>
<section class="main-content text-center" id="topic-workshops">
<h2>Workshops</h2>
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.workshop  %}
 {% include 2016/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}
</section>
<section class="main-content text-center" id="topic-talks">
<h2>Talks</h2>
{% for page in site.pages %}
{% if page.path contains snippet_path %}
{% if page.talk  %}
 {% include 2016/pages/topic-page.md  topic=page%}
{% endif %}
{% endif %}
{% endfor %}

</section>
</div>


<section class='main-content'>
<h2>Organizers</h2>
<ol class="volunteers-list">
  <li class="volunteer">
    <img src="https://pbs.twimg.com/profile_images/1299815722/Adi1.JPG">
    <span class="name">Adi Bolboacă</span>
    <a href="https://twitter.com/adibolb">@adibolb</a>
  </li>
  <li class="volunteer">
    <img src="https://pbs.twimg.com/profile_images/1877737374/20110907at09-16-47.jpg">
    <span class="name">Aki Salmi</span>
    <a href="https://twitter.com/rinkkasatiainen">@rinkkasatiainen</a>
  </li>
  <li class="volunteer">
    <img src="https://pbs.twimg.com/profile_images/621208613747576832/cdWmRNH7_400x400.jpg">
    <span class="name">Alina Ionescu</span>
    <a href="https://twitter.com/al_innutza">@al_innutza</a>
  </li>
  <li class="volunteer">
    <img src="https://pbs.twimg.com/profile_images/1837642393/twitter_profile.png">
    <span class="name">Llewellyn Falco</span>
    <a href="https://twitter.com/LlewellynFalco">@LlewellynFalco</a>
  </li>
  <li class="volunteer">
    <img src="https://pbs.twimg.com/profile_images/629062251152961536/kumhZ5lm_400x400.jpg">
    <span class="name">Maaret Pyhäjärvi</span>
    <a href="https://twitter.com/maaretp">@maaretp</a>
  </li>
</ol>
</section>

<div class='main-content'>

<ul id="" class="list-unstyled text-center">
<li class="platinum-sponsor">
  <h3>Platinum sponsors </h3>
  <p class="sponsors">
	  <span class="sponsor ">
	    <a href="http://mozaicworks.com/"><img src="/images/sponsors/mozaic_works.png" alt="Mozaic Works"></a>
	  </span>
	  <span class="sponsor ">
	    <a href="http://www.associationforsoftwaretesting.org/"><img src="/images/sponsors/AssociationForSoftwareTesting.png" alt="Association For Software Testing"></a>
	  </span>
  </p>
  <p class="sponsors">
	  <span class="sponsor ">
	    <a href="https://www.db.com/careers/index_e.html"><img src="/images/sponsors/deutsche-bank.png" alt="Deutsche Bank"></a>
	  </span>
  </p>
</li>
<li class="gold-sponsor">
  <h3>Gold sponsors</h3>
  <p class="sponsors">
	  <span class="sponsor">
	    <a href="http://altom.ro/"><img src="/images/sponsors/Altom.png" alt="Altom"></a>
	  </span>
	  <span class="sponsor ">
	    <a href="http://www.agilealliance.org/"><img src="/images/sponsors/AgileAlliance.jpg" alt="Agile Alliance"></a>
	  </span>
	  <span class="sponsor ">
	    <a href="http://www.endava.com"><img src="/images/sponsors/endava.png" alt="Endava"></a>
	  </span>
  </p>
</li>
<li class="gold-sponsor">
  <h3>Partners</h3>
  <p class="sponsors">
	  <span class="sponsor">
	    <a href="http://tabaradetestare.ro/en/" target="_blank"><img src="/images/partners/tabara-de-testare-logo.png" alt="Tabara de Testare"></a>
	  </span>
	  <span class="sponsor">
	    <a href="http://ctrl-d.ro" target="_blank"><img src="/images/partners/logo_ctrl-d.png" alt="Ctrl-D"></a>
	  </span>
  </p>
</li>
</ul>

</div>
