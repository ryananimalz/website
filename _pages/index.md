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
  <section class="home-hero" id="about">
    <div class="home-hero-top">
      <div class="home-intro">
        <h1>Hi! I'm Ryan Law.</h1>
        <span class="about-photo">
          <img src="{{ site.baseurl }}/assets/Ryan_Law_headshot.jpg" alt="Ryan Law" width="200" height="300" loading="lazy">
        </span>
        <p>Ryan Law is the Director of Content Marketing at <a href="https://ahrefs.com/">Ahrefs</a>. Previously he was CMO at the content marketing agency <a href="http://animalz.co/">Animalz</a>, and the co-founder of content marketing agency Cobloom.</p>
        <p>Ryan has 14-years experience as a Director, VP, and CMO, and has helped companies including Google, GoDaddy, Zapier, Algolia, and Clearbit improve their marketing and SEO.</p>
        <p>Ryan is an experienced speaker, presenting at in-person events including brightonSEO, The Digital PR Summit, and <a href="https://ahrefsevolve.com/">Ahrefs Evolve</a>. He has lead workshops, webinars, and private training sessions for companies including Microsoft, Randstad, Andreessen Horowitz, Insight Partners, Content Marketing Institute, Search Engine Journal, Writer, Drift, Clearscope, and Wynter.</p>
        <p>Ryan is the creator of two content marketing courses, with over 1,200 students enrolled: <a href="https://courses.ryanlaw.me/how-to-write-thought-leadership-content">How to Write Thought Leadership Content</a> and <a href="https://courses.ryanlaw.me/how-to-edit">How to Edit</a>. Ryan is a judge for the International Content Marketing Awards and a trustee of <a href="https://www.thesoftwarecharity.org/">The Software Charity</a>.</p>
        <p>Ryan is the author of <a class="internal-link" href="{{ site.baseurl }}/books"><em>The Green Priest</em> and <em>The Death-Marked Pilgrim</em></a>, the host of the <a href="https://ashtales.com/podcast">Ash Tales podcast</a>, an amateur <a class="internal-link" href="{{ site.baseurl }}/photos">landscape photographer</a>, and the guitarist for <a href="https://theschrodingereffect.com/">The Schrödinger Effect</a>.</p>
      </div>
    </div>
  </section>

  <section class="home-about" aria-labelledby="gallery">
    <hr>
    <h2 class="about-gallery-heading" id="gallery">Gallery</h2>
    <div class="about-gallery" aria-label="Photo gallery">
      <section class="about-gallery-row">
        <aside class="about-gallery-marginalia side-panel" aria-label="Gallery marginalia">
          <h3 class="side-panel-title">Evolve Singapore, 2024</h3>
          <div class="side-panel-items">
            <div class="backlink-box side-panel-item">
              <div class="side-panel-text">
                <p>Incredible getting to fly across the world to speak on stage to 600 people. Career highlight for sure.</p>
              </div>
            </div>
          </div>
        </aside>
        <div class="about-gallery-strip">
          <figure class="about-gallery-item about-gallery-item--landscape">
            <div class="about-gallery-frame">
              <img src="/assets/N2_05990%20(2).jpg" alt="Gallery photograph 6" width="1280" height="853" loading="lazy">
            </div>
          </figure>
        </div>
      </section>

      <section class="about-gallery-row">
        <aside class="about-gallery-marginalia side-panel" aria-label="Gallery marginalia">
          <h3 class="side-panel-title">Evolve San Diego, 2025</h3>
          <div class="side-panel-items">
            <div class="backlink-box side-panel-item">
              <div class="side-panel-text">
                <p>I cannot stress how big the LED screen was for this event. No-one should be subjected to my face at 8-gajillion DPI.</p>
              </div>
            </div>
          </div>
        </aside>
        <div class="about-gallery-strip">
          <figure class="about-gallery-item about-gallery-item--portrait">
            <div class="about-gallery-frame">
              <img src="/assets/ahrefs_evolve_day3_social-85.jpg" alt="Gallery photograph 1" width="1365" height="2048" loading="lazy">
            </div>
          </figure>
          <figure class="about-gallery-item about-gallery-item--portrait">
            <div class="about-gallery-frame">
              <img src="/assets/ahrefs_evolve_day3_social-90.jpg" alt="Gallery photograph 2" width="1365" height="2048" loading="lazy">
            </div>
          </figure>
        </div>
      </section>

      <section class="about-gallery-row">
        <aside class="about-gallery-marginalia side-panel" aria-label="Gallery marginalia">
          <h3 class="side-panel-title">London meetup, 2024</h3>
          <div class="side-panel-items">
            <div class="backlink-box side-panel-item">
              <div class="side-panel-text">
                <p>Super-fun meetup for Ahrefs customers, I want to do more of these small-scale events in London.</p>
              </div>
            </div>
          </div>
        </aside>
        <div class="about-gallery-strip">
          <figure class="about-gallery-item about-gallery-item--landscape">
            <div class="about-gallery-frame">
              <img src="/assets/3df9ce58-f621-4421-937c-769c009d20ed.jpg" alt="Gallery photograph 5" width="4000" height="3000" loading="lazy">
            </div>
          </figure>
        </div>
      </section>

      <section class="about-gallery-row">
        <aside class="about-gallery-marginalia side-panel" aria-label="Gallery marginalia">
          <h3 class="side-panel-title">brightonSEO 2025</h3>
          <div class="side-panel-items">
            <div class="backlink-box side-panel-item">
              <div class="side-panel-text">
                <p>Hosting an enterprise lunch about 60-seconds after I gave a talk in Auditorium 2. I think lunches are scarier than talks.</p>
              </div>
            </div>
          </div>
        </aside>
        <div class="about-gallery-strip">
          <figure class="about-gallery-item about-gallery-item--landscape">
            <div class="about-gallery-frame">
              <img src="/assets/DAR-34%20(1).jpg" alt="Gallery photograph 10" width="5500" height="3667" loading="lazy">
            </div>
          </figure>
        </div>
      </section>

      <section class="about-gallery-row">
        <aside class="about-gallery-marginalia side-panel" aria-label="Gallery marginalia">
          <h3 class="side-panel-title">Evolve San Diego, 2025</h3>
          <div class="side-panel-items">
            <div class="backlink-box side-panel-item">
              <div class="side-panel-text">
                <p>This talk was a ton of fun, and very personal: how to defend your career in the era of AI.</p>
              </div>
            </div>
          </div>
        </aside>
        <div class="about-gallery-strip">
          <figure class="about-gallery-item about-gallery-item--portrait">
            <div class="about-gallery-frame">
              <img src="/assets/Evolve2025-95.jpg" alt="Gallery photograph 3" width="1365" height="2048" loading="lazy">
            </div>
          </figure>
          <figure class="about-gallery-item about-gallery-item--portrait">
            <div class="about-gallery-frame">
              <img src="/assets/Evolve2025-99.jpg" alt="Gallery photograph 4" width="1365" height="2048" loading="lazy">
            </div>
          </figure>
        </div>
      </section>

      <section class="about-gallery-row">
        <aside class="about-gallery-marginalia side-panel" aria-label="Gallery marginalia">
          <h3 class="side-panel-title">The Digital PR Summit, 2026</h3>
          <div class="side-panel-items">
            <div class="backlink-box side-panel-item">
              <div class="side-panel-text">
                <p>Speaking in Manchester about our research into AI search, and how to build effective brand mentions.</p>
              </div>
            </div>
          </div>
        </aside>
        <div class="about-gallery-strip">
          <figure class="about-gallery-item about-gallery-item--landscape">
            <div class="about-gallery-frame">
              <img src="/assets/DPRS_2026-99-scaled%20(1).jpg" alt="Gallery photograph 7" width="2560" height="1707" loading="lazy">
            </div>
          </figure>
        </div>
      </section>
    </div>
  </section>
<hr>
  {% if latest_note %}
    <article class="home-latest-promo">
      <p class="latest-note-label">Latest note</p>
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
            <span class="note-date"><span class="note-date-separator" aria-hidden="true">— </span>{{ note.publish_date | default: note.last_modified_at | date: "%Y-%m-%d" }}</span>
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

{% include image-lightbox.html id="about-gallery-lightbox" scope_selector="content .about-gallery" image_selector=".about-gallery-frame > img" %}

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
