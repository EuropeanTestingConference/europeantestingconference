---
permalink: /demo/
year: demo
redirect_from:
 - /
layout: index-2018
---

{% capture sections_path %}{{ page.permalink }}sections/{% endcapture %}

{% for page in site.pages %}
{% if page.path contains sections_path %}
<section id="{{ page.about }}"  class="col-md-12 main-content text-center {% if page.class
                              %}{{ page.class }}{% endif %}"
>
    <!-- Hotjar Tracking Code for europeantestingconference.eu -->
    <script>
        (function(h,o,t,j,a,r){
            h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
            h._hjSettings={hjid:322653,hjsv:5};
            a=o.getElementsByTagName('head')[0];
            r=o.createElement('script');r.async=1;
            r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
            a.appendChild(r);
        })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
    </script>
</section>
{% endif %}
{% endfor %}
