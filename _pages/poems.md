---
layout: page
title: Poems
permalink: /poems/
---
# Poems
A collection of simple poems.

<hr>
{% assign all_poems = site.poems | sort: "publish_date" | reverse %}
{% for poem in all_poems %}
  <div class="note-list-item">
    <a class="internal-link note-title" href="{{ site.baseurl }}{{ poem.url }}">{{ poem.title }}</a>
    <span class="note-date">— {{ poem.publish_date | default: poem.last_modified_at | date: "%Y-%m-%d" }}</span>
  </div>
{% endfor %}
