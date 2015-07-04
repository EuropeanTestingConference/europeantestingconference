{% assign volunteer=include.volunteer%}
  <li class="volunteer">
    <img src="{{ volunteer.image }}" />
    <span class="name">{{ volunteer.name }}</span>
    {% if volunteer.twitter != null  %}
      <a href="https://twitter.com/{{ volunteer.twitter }}">@{{ volunteer.twitter }}</a>
    {% else %}
      &nbsp;
    {% endif %}
  </li>
