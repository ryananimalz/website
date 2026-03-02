---
layout: page
title: Home
id: home
permalink: /
---
{% if site.notes.size > 0 %}
  {% capture random_note_urls %}{% for note in site.notes %}{{ note.url | relative_url }}{% unless forloop.last %}|{% endunless %}{% endfor %}{% endcapture %}
{% endif %}
{% assign latest_note = site.notes | sort: "last_modified_at_timestamp" | reverse | first %}

<div class="home-page">
  <section class="home-hero">
    <div class="home-hero-top">
      <div class="home-intro">
        <h1>Hi! I'm <a class="internal-link" href="{{ site.baseurl }}/about">Ryan Law</a>.</h1>
        <p>This is my personal corner of the internet, published directly from my Obsidian note vault. Everything here is a work in progress.</p>
        <p>I write notes to self about writing, marketing, and other esoterica. I also share the occasional poems and photograph.</p>
        <p>You can see my <a class="internal-link" href="{{ site.baseurl }}/about">About</a> page, learn <a class="internal-link" href="{{ site.baseurl }}/how-this-website-was-built">how this website was built</a>, or <a class="internal-link" id="random-note-link" href="{{ site.baseurl }}/notes/" data-random-note-urls="{{ random_note_urls | strip }}">read a random note</a>.</p>
      </div>

      <div class="home-portrait">
        <span class="about-photo">
          <img src="{{ site.baseurl }}/assets/Ryan_Law_headshot.jpg" alt="Ryan Law" width="200" loading="lazy">
        </span>
      </div>
    </div>
  </section>

  {% if latest_note %}
    <article class="home-card home-latest-promo">
      <p class="home-kicker">Latest note</p>
      <h2 class="home-card-title latest-note-title">
        <a class="internal-link note-title" href="{{ site.baseurl }}{{ latest_note.url }}">{{ latest_note.title }}</a>
      </h2>
      <p class="note-date">{{ latest_note.publish_date | default: latest_note.last_modified_at | date: "%Y-%m-%d" }}</p>
      <p class="latest-note-excerpt">{{ latest_note.content | strip_html | normalize_whitespace | truncatewords: 36 }}</p>
      <p class="latest-note-read-more">
        <a class="internal-link" href="{{ site.baseurl }}{{ latest_note.url }}">Read latest</a>
      </p>
    </article>
  {% endif %}

  <div class="home-grid">
    {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
    {% assign recent_photos = site.photos | sort: "publish_date" | reverse %}
    {% assign latest_photo = recent_photos | first %}
    {% if recent_notes.size > 1 %}
    <section class="home-writing-list">
      <h3 class="home-card-title">Recent writing <a class="see-all-link internal-link" href="{{ site.baseurl }}/notes/">See all</a></h3>
      <hr>
      <ul class="note-list">
        {% for note in recent_notes offset:1 limit:6 %}
          <li class="note-list-item">
            <a class="internal-link note-title" href="{{ site.baseurl }}{{ note.url }}">{{ note.title }}</a>
            <span class="note-date">— {{ note.publish_date | default: note.last_modified_at | date: "%Y-%m-%d" }}</span>
          </li>
        {% endfor %}
      </ul>
    </section>
    {% endif %}

    {% if latest_photo and latest_photo.cover_image %}
    <section class="home-photo-feature">
      <a href="{{ site.baseurl }}{{ latest_photo.url }}" class="home-photo-feature-link internal-link no-preview">
        <span class="home-photo-frame">
          <img src="{{ latest_photo.cover_image }}" alt="{{ latest_photo.title }}" loading="lazy">
        </span>
        <span class="home-photo-caption">
          <span class="home-photo-title">{{ latest_photo.title }}</span>
          <span class="home-photo-date">{{ latest_photo.publish_date | date: "%B %Y" }}</span>
        </span>
      </a>
    </section>
    {% endif %}
  </div>
</div>

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
