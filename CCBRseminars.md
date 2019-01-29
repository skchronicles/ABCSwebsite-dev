
## Previous TechDev and Journal Club Meetings

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts %}
    {% if post.categories contains "seminars" %}
        {% if post.tags contains "techdev" or post.tags contains "journal club" %}
            {% capture posttime %}{{ post.date | date: '%s' }}{% endcapture %}
            {% if posttime < nowunix %}
                <li>
                    <a href="{{ "" | absolute_url }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
                </li>
            {% endif %}
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>
