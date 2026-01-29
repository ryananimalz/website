---
layout: page
title: "Photography"
permalink: /photography/
---

{% assign sorted = site.photography | sort: "date" | reverse %}
{% for photo in sorted %}
  <div class="photography-list-item">
    {% if photo.cover_image %}
      <a href="{{ photo.url }}" class="photography-preview">
        <img src="{{ photo.cover_image }}" alt="{{ photo.title }} preview" loading="lazy">
      </a>
    {% endif %}
    <div class="photography-meta">
      <p><a href="{{ photo.url }}">{{ photo.title }}</a></p>
      <p>{{ photo.date | date: "%B %Y" }}</p>
    </div>
  </div>
{% endfor %}
