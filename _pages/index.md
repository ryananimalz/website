---
layout: page
title: Home
id: home
permalink: /
---
# Recent 

{% if site.notes.size > 0 %}
  {% capture random_note_urls %}{% for note in site.notes %}{{ note.url | relative_url }}{% unless forloop.last %}|{% endunless %}{% endfor %}{% endcapture %}
{% endif %}

Hi! I'm [[about|Ryan Law]]. This is my personal corner of the internet, published directly from my Obsidian note vault. I write regularly about writing, marketing, and other esoterica. See my [[about]] page, learn [[how this website was built]], or <a class="internal-link" id="random-note-link" href="{{ site.baseurl }}/writing/" data-random-note-urls="{{ random_note_urls | strip }}">read a random note</a>.

<script>
  (function() {
    var randomNoteLink = document.getElementById('random-note-link');
    if (!randomNoteLink) return;

    var randomNoteUrls = (randomNoteLink.getAttribute('data-random-note-urls') || '')
      .split('|')
      .filter(Boolean);

    if (!randomNoteUrls.length) {
      randomNoteLink.setAttribute('aria-disabled', 'true');
      randomNoteLink.removeAttribute('href');
      return;
    }

    randomNoteLink.addEventListener('click', function(event) {
      event.preventDefault();
      var randomIndex = Math.floor(Math.random() * randomNoteUrls.length);
      window.location.href = randomNoteUrls[randomIndex];
    });
  })();
</script>

<br>

{% assign latest_note = site.notes | sort: "last_modified_at_timestamp" | reverse | first %}
{% if latest_note %}
<section>
  <h3>Latest note</h3>
  <hr>
  <article class="latest-note-preview">
    <h4 class="latest-note-title">
      <a class="internal-link note-title" href="{{ site.baseurl }}{{ latest_note.url }}">{{ latest_note.title }}</a>
    </h4>
    <p class="note-date">{{ latest_note.publish_date | default: latest_note.last_modified_at | date: "%Y-%m-%d" }}</p>
    <p class="latest-note-excerpt">{{ latest_note.content | strip_html | normalize_whitespace | truncatewords: 36 }}</p>
    <p class="latest-note-read-more">
      <a class="internal-link" href="{{ site.baseurl }}{{ latest_note.url }}">Read note</a>
    </p>
  </article>
</section>

<br>
{% endif %}

<section>
  <h3>Recent writing <a class="see-all-link internal-link" href="/writing/">See all</a></h3>
<hr>
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
<br>
<section>
  <h3>Recent photography <a class="see-all-link internal-link" href="/photography/">See all</a></h3>
<hr>
  {% assign recent_photos = site.photography | sort: "publish_date" | reverse %}
  {% for photo in recent_photos limit: 3 %}
    <div class="photography-list-item">
      {% if photo.cover_image %}
        <a href="{{ photo.url }}" class="photography-preview internal-link">
          <img src="{{ photo.cover_image }}" alt="{{ photo.title }} preview" loading="lazy">
        </a>
      {% endif %}
      <div class="photography-meta">
        <p><a class="internal-link" href="{{ photo.url }}">{{ photo.title }}</a></p>
        <p class="note-date">{{ photo.publish_date | date: "%B %Y" }}</p>
      </div>
    </div>
  {% endfor %}
</section>
