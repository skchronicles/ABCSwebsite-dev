# Seminars

## Upcoming

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts reversed %}
    {% if post.categories contains "seminars" %}
        {% capture posttime %}{{post.date | date: '%s'}}{% endcapture %}
        {% if posttime > nowunix %}
            {% if post.series == null %}
                <li>
                    <a href="{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
                </li>
            {% else %}
                <li>
                    <a href="{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.series }}: {{ post.title }}</a>
                </li>
            {% endif %}
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>

## Previous

* [TechDev and Journal Club]({{ "/" | absolute_url }}CCBRseminars)
* [Bioinformatics User Forum]({{ "/" | absolute_url }}BUF)
    * [Statistics for Lunch]({{ "/" | absolute_url }}Stats4Lunch)
    * [Programmer's Corner]({{ "/" | absolute_url }}ProgrammersCorner)
    * HPC Special Interest Group
