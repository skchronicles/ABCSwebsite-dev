# Seminars

## Upcoming

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts reversed %}
    {% if post.categories contains "seminars"%}
        {% capture posttime %}{{post.date | date: '%s'}}{% endcapture %}
        {% if posttime > nowunix %}
            <li>
                <a href="{{ "/" | absolute_url }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
            </li>
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>

## Previous

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts %}
    {% if post.categories contains "seminars"%}
        {% capture posttime %}{{post.date | date: '%s'}}{% endcapture %}
        {% if posttime < nowunix %}
            <li>
                <a href="{{ "/" | absolute_url }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
            </li>
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>
