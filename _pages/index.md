---
layout: page
title: Home
id: home
permalink: /
---

# Recent 

My personal corner of the internet, published directly from my Obsidian note vault. 

Learn [[how this website was built]] or see my [[about]] page.



<div class="home-columns">
  <section class="home-column">
    <h3>Recent writing</h3>

    <ul class="note-list">
      {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
      {% for note in recent_notes limit: 10 %}
        <li class="note-list-item">
          <a class="internal-link note-title" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
          <span class="note-date">— {{ note.publish_date | default: note.last_modified_at | date: "%Y-%m-%d" }}</span>
        </li>
      {% endfor %}
    </ul>
  </section>

  <section class="home-column">
    <h3>Recent photography</h3>

    {% assign recent_photos = site.photography | sort: "date" | reverse %}
    {% for photo in recent_photos limit: 3 %}
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
  </section>
</div>
