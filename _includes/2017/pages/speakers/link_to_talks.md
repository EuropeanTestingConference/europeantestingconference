{% assign url_for_talk = include.url_for_talk %}
{% assign snippet_path_for_talk = include.snippet_path_for_talk %}


{% for page in site.pages %}
    {% if page.path contains snippet_path_for_talk %}
		  <em>"<a href='{{ url_for_talk }}'>{{ page.title  }}</a>"</em><br/>
    {% endif %}
{% endfor %}
