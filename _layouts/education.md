### {% include maylink.md what=page.org %} {#{% include id.lq %}}
{{ page.cert.short }}, {% for c in page.area %}{% include maylink.md what=c %}{% unless forloop.last %}, {% endunless %}{% endfor %} {% include opendate.md obj = page %}
{% if page.notes %}
{:.notes}{% for note in page.notes %}
 - {{ note }}{% endfor %}
{% endif %}