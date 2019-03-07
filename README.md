# About ABCS

Advanced Biomedical Computing Science (ABCS) supports scientific research at the [Frederick National Laboratory for Cancer Research](https://frederick.cancer.gov/), [NCI at Frederick](https://ncifrederick.cancer.gov/Default.aspx), [NCI in Bethesda](https://www.cancer.gov/), [NIH](https://www.nih.gov/), and other federal agencies.

ABCS provides bioinformatics, mathematical simulation and modeling, image analysis and visualization, chemoinformatics, and proteomic analysis from study design through publication, as well as data integration support for scientific projects through database maintenance and development, and scientific web application development.

ABCS is a centrally funded resource to NCI investigators for expert consultations, collaborations, and technology development projects. In most cases there is no charge to NCI PIs. Please feel free to reach out to the people listed in our [contacts](https://abcsfrederick.info/Contacts) to discuss your question or project.

## Recent Vignettes

These vignettes contain some examples of recent ABCS work. See our [full list of vignettes]({{ site.baseurl }}/Vignettes/all), or select a group from the menu.

<ul>
    {% for post in site.posts %}
    {% if post.categories contains "vignettes"%}
        <li>
            <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a>
        </li>
    {% endif %}
    {% endfor %}
</ul>