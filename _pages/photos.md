---
layout: page
title: Photos
permalink: /photos/
---
# Photos

I like to hike and take photographs along the way. Most of these photos are taken in the Chiltern hills, particularly the Ridgeway Trail, one of Britain's oldest paths. I shoot an [[Get great with bad gear|old Sony a6000 with kit lenses]].
<hr>

{% assign sorted = site.photos | sort: "publish_date" | reverse %}
<div class="photography-list">
  {% for photo in sorted %}
    <article class="photography-list-item">
      {% if photo.cover_image %}
        <a href="{{ photo.url }}" class="photography-preview internal-link">
          <img src="{{ photo.cover_image }}" alt="{{ photo.title }} preview" loading="lazy">
          <span class="photography-caption">
            <span class="photography-title">{{ photo.title }}</span>
            <span class="photography-date">{{ photo.publish_date | date: "%B %Y" }}</span>
          </span>
        </a>
      {% endif %}
    </article>
  {% endfor %}
</div>
