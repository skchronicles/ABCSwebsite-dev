# ABCS Vignettes

<ul>
    <li> Structural Biology </li>
    <li> Simulation and Modeling </li>
    <ul>
    {% for post in site.posts %}
    {% if post.categories contains "vignettes" and post.tags contains "simulation and modeling" %}
        <li>
            <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
        </li>
    {% endif %}
    {% endfor %}
    </ul>
    <li> Collaborative Bioinformatics </li>
    <li> Sequencing </li>
    <li> Imaging </li>
    <li> Data Integration and Systems Biology </li>
    <li> Mathematical Analysis and Classification </li>
    <li> Scientific Web Development </li>
</ul>