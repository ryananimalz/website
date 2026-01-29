---
layout: page
title: Home
id: home
permalink: /
---

# Recent 

<p style="padding: 3em 1em; background: #262626; border-radius: 4px;">
  Take a look at <span style="font-weight: bold">[[Your first note]]</span> to get started on your exploration.
</p>

Personal thoughts and reflections. For my writing and research on SEO and marketing, see the [Ahrefs blog](https://ahrefs.com/blog/).

<div class="home-columns">
  <section class="home-column">
    <strong>Recent writing</strong>

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
    <strong>Recent photography</strong>

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

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
