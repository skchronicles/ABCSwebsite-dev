# Events

## Upcoming

<ul>
    {% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}
    {% for post in site.posts reversed %}
    {% if post.categories contains "seminars" %}
        {% capture posttime %}{{post.date | date: '%s'}}{% endcapture %}
        {% if posttime > nowunix %}
            {% if post.series == null %}
                <li>
                    <a href="{{ site.baseurl }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.title }}</a>
                </li>
            {% else %}
                <li>
                    <a href="{{ site.baseurl }}{{ post.url }}">{{ post.date | date: "%-d %B %Y"}}, {{ post.series }}: {{ post.title }}</a>
                </li>
            {% endif %}
        {% endif %}
    {% endif %}
    {% endfor %}
</ul>

## Previous

* [TechDev and Journal Club]({{ site.baseurl }}/CCBRseminars)
* [Bioinformatics User Forum]({{ site.baseurl }}/BUF)
    * [Statistics for Lunch]({{ site.baseurl }}/Stats4Lunch)
    * [Programmer's Corner]({{ site.baseurl }}/ProgrammersCorner)
    * HPC Special Interest Group
