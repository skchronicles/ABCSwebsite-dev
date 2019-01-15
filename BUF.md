
## Previous Bioinformatics User Forum Meetings

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts %}
    {% if post.categories contains "seminars" and post.tags contains "BUF" %}
    {% unless post.tags contains "statistics for lunch" or post.tags contains "programmers corner" %}
        {% capture posttime %}{{ post.date | date: '%s' }}{% endcapture %}
        {% if posttime < nowunix %}
            <li>
                <a href="{{ "/" | absolute_url }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
            </li>
        {% endif %}
    {% endunless %}
    {% endif %}
    {% endfor %}
</ul>
