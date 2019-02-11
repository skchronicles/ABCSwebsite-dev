
## Previous Programmer's Corner Meetings

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts %}
    {% if post.categories contains "seminars" and post.tags contains "programmers corner" %}
        {% capture posttime %}{{ post.date | date: '%s' }}{% endcapture %}
        {% if posttime < nowunix %}
            <li>
                <a href="{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
            </li>
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>
