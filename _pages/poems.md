---
layout: page
title: Poems
permalink: /poems/
---
# Poems
Occasional poetry, usually haikus. I love spending time in nature and trying to capture small fragments of the experience, either in writing or in [[photos]].

Abstract watercolour backgrounds for each poem are generated automatically when the poem is published, using the poem's contents as inspiration for the colour palette and generation.

<hr>
{% assign all_poems = site.poems | sort: "publish_date" | reverse %}
{% for poem in all_poems %}
  <div class="note-list-item">
    <a class="internal-link note-title" href="{{ site.baseurl }}{{ poem.url }}">{{ poem.title }}</a>
    <span class="note-date"><span class="note-date-separator" aria-hidden="true">— </span>{{ poem.publish_date | default: poem.last_modified_at | date: "%Y-%m-%d" }}</span>
  </div>
{% endfor %}
