---
layout: page
permalink: /teaching/
title: teaching
---

<div class="news">
  {% for course in site.teaching reversed %}
    <div class="course-item" style="margin-bottom: 2em;">
      <h3><a href="{{ course.link }}">{{ course.title }}</a></h3>
      <p>
        <strong>Semester:</strong> {{ course.semester }} <br/>
      </p>
      <p>{{ course.content | strip_html | truncatewords: 30 }}</p>
      {% if course.syllabus_link %}
        <a href="{{ course.syllabus_link | relative_url }}" class="btn btn-primary" target="_blank" rel="noopener">Syllabus</a>
      {% endif %}
    </div>
  {% endfor %}
</div>