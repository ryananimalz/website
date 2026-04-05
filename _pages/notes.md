---
layout: page
title: Notes
permalink: /notes/
---
<div id="notes-entry-container" class="notes-index-layout">
  <content>
    <h1>Notes</h1>
    <p>Personal thoughts and reflections. This is a living body of ideas that I refine and tinker with over time (many of these notes are much older than their publish date suggests). They are primarily notes to myself, but you may find them interesting too.</p>

    <hr>
    {% assign all_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
    {% for note in all_notes %}
      <div class="note-list-item">
        <a class="internal-link note-title" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
        <span class="note-date"><span class="note-date-separator" aria-hidden="true">— </span>{{ note.publish_date | default: note.last_modified_at | date: "%Y-%m-%d" }}</span>
      </div>
    {% endfor %}
  </content>

  <side class="note-side">
    <h3>Marginalia</h3>
    <div class="note-side-stack">
      <div class="backlink-box">
        <div class="note-side-excerpt">
          There is no newsletter for this website, but you can find an RSS feed of my latest notes <a href="https://ryanlaw.me/feed.xml">here</a>.<br><br>
          For my writing and research on SEO and marketing, see the <a href="https://ahrefs.com/blog/">Ahrefs blog</a>.
        </div>
      </div>
    </div>
  </side>
</div>
