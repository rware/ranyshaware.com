---
layout: page
title: teaching
permalink: /teaching/
---

Here is a list of courses I have taught or served as a teaching assistant for.

<div class="news">
  {% for course in site.teaching reversed %}
    <div class="course-item" style="margin-bottom: 2em;">
      <h3><a href="{{ course.url | relative_url }}">{{ course.title }}</a></h3>
      <p>
        <strong>Semester:</strong> {{ course.semester }} <br/>
        <strong>Role:</strong> {{ course.role }}
      </p>
      <p>{{ course.content | strip_html | truncatewords: 30 }}</p>
      {% if course.syllabus_link %}
        <a href="{{ course.syllabus_link | relative_url }}" class="btn btn-primary" target="_blank" rel="noopener">Syllabus</a>
      {% endif %}
    </div>
  {% endfor %}
</div>