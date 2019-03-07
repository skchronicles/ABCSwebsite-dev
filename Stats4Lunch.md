
## Previous Statistics for Lunch Seminars

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts %}
    {% if post.categories contains "seminars" and post.tags contains "statistics for lunch" %}
        {% capture posttime %}{{ post.date | date: '%s' }}{% endcapture %}
        {% if posttime < nowunix %}
            <li>
                <a href="{{ site.baseurl }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
            </li>
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>
