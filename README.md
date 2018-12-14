# About ABCS

The Advanced Biomedical Computational Science (ABCS) group is a part of the Biomedical Informatics and Data Science (BIDS) directorate at [Leidos Biomedical Research, Inc](https://www.leidos.com/company/subsidiaries/leidos-biomedical-research). The ABCS provides technology development, scientific consultation, collaboration and training, and high-performance computing support to the [National Cancer Institute](https://www.cancer.gov) (NCI) and [National Institutes of Health](https://www.nih.gov) (NIH) scientists and staff.

ABCS provides bioinformatics, mathematical simulation and modeling, image analysis and visualization, nanoinformatics, proteomic analysis, data integration support for scientific projects through database maintenance and development, and scientific web application development.

## Recent Vignettes

<ul>
    {% for post in site.posts limit:5 %}
    {% unless post.categories contains "seminars"%}
        <li>
            <a href="{{ post.url }}">{{ post.title }}</a>
        </li>
    {% endunless %}
    {% endfor %}
</ul>