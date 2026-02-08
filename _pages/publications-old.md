---
layout: page
permalink: /publications/
title: publications
years: [2019,2021,2024,2025]
---

{% assign sorted_years = page.years | sort | reverse %}
{% for y in sorted_years %}
  <h3 class="year">{{y}}</h3>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}