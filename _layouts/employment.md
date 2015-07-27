###{% include maylink.md what=page.org %} {% include opendate.md obj = page %} {#{% include id.lq %}}
{% for pos in page.position reversed %}
 - *{{ pos.name }}*{% if pos.div %}, {{ pos.div }}{% endif %} {% include opendate.md obj = pos %}{% if pos.notes %}{% for n in pos.notes %}
   - {{ n }}{% endfor %}{% endif %}{% endfor %}
