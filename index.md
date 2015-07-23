---
---
{% include views.md %}
# [{{ site.fullname }}](mailto:{{ site.mailto }}){:.contact}

## Education
{% for edu in site.education reversed %}
### {% include maylink.md what=edu.org %}
{{ edu.cert.short }}
{% endfor %}
## Published Work

### Papers

### Posters, Talks

### Software

## Teaching

## Employment
