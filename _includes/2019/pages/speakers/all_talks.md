{% assign speaker = include.speaker %}

{% assign my_array = "/2019/topics/|/2019/trainings/" | split: "|" %}
{%  for talk in my_array %}
    {% capture url_for_talk %}{{ talk }}#{{ speaker.id }}{% endcapture %}
    {% capture snippet_path_for_talk %}{{ talk }}snippets/{{ speaker.id }}.md{% endcapture %}

    {% include 2019/pages/speakers/link_to_talks.md url_for_talk=url_for_talk snippet_path_for_talk=snippet_path_for_talk %}
{% endfor %}

{% for talk in speaker.talks %}
  {%  for talk_type in my_array %}
    {% capture url_for_talk %}{{ talk_type }}#{{ talk.id }}{% endcapture %}
    {% capture snippet_path_for_talk %}{{ talk_type }}snippets/{{ talk.id }}.md{% endcapture %}
    {% include 2019/pages/speakers/link_to_talks.md url_for_talk=url_for_talk snippet_path_for_talk=snippet_path_for_talk %}
  {% endfor %}
{% endfor %}
