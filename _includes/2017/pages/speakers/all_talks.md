{% assign speaker = include.speaker %}

{% assign my_array = "/2017/topics/|/2017/trainings/" | split: "|" %}
{%  for talk in my_array %}
    {% capture url_for_talk %}{{ talk }}#{{ speaker.id }}{% endcapture %}
    {% capture snippet_path_for_talk %}{{ talk }}snippets/{{ speaker.id }}.md{% endcapture %}
    {% include 2017/pages/speakers/link_to_talks.md url_for_talk=url_for_talk snippet_path_for_talk=snippet_path_for_talk %}
{% endfor %}

{% for talk in speaker.talks %}
    {% capture url_for_talk %}/2017/trainings#{{ talk.id }}{% endcapture %}
    {% capture snippet_path_for_talk %}/2017/trainings/snippets/{{ talk.id }}.md{% endcapture %}
    {% include 2017/pages/speakers/link_to_talks.md url_for_talk=url_for_talk snippet_path_for_talk=snippet_path_for_talk %}
{% endfor %}
