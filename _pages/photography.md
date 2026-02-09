---
layout: page
title: "Photography"
permalink: /photography/
---
# Photography

I like to hike and take photographs along the way. Most of these photos are taken in the Chiltern hills, particularly the Ridgeway Trail, one of Britain's oldest paths. I shoot on an old Sony a6000 with kit lenses (see my belief: [[Get great with bad gear]]).

{% assign sorted = site.photography | sort: "publish_date" | reverse %}
{% for photo in sorted %}
  <div class="photography-list-item">
    {% if photo.cover_image %}
      <a href="{{ photo.url }}" class="photography-preview internal-link">
        <img src="{{ photo.cover_image }}" alt="{{ photo.title }} preview" loading="lazy">
      </a>
    {% endif %}
    <div class="photography-meta">
      <p><a class="internal-link" href="{{ photo.url }}">{{ photo.title }}</a></p>
      <p>{{ photo.publish_date | date: "%B %Y" }}</p>
    </div>
  </div>
{% endfor %}
