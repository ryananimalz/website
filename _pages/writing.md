---
layout: page
title: "Writing"
permalink: /writing/
---
# Writing
Personal thoughts and reflections. This is a living body of ideas that I refine and tinker with over time (many of these notes are much older than their publish date suggests). They are primarily notes to myself, but you may find them interesting too.

For my writing and research on SEO and marketing, see the [Ahrefs blog](https://ahrefs.com/blog/).
<hr>
{% assign all_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
{% for note in all_notes %}
  <div class="note-list-item">
    <a class="internal-link note-title" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
    <span class="note-date">— {{ note.publish_date | default: note.last_modified_at | date: "%Y-%m-%d" }}</span>
  </div>
{% endfor %}
