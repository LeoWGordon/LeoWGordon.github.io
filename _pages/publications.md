---
layout: page
permalink: /publications/
title: Publications
description: My first-author and collaborative publications.
years: [2024, 2023, 2022]
nav: true
---
<!-- _pages/publications.md -->
<div class="publications">

{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
