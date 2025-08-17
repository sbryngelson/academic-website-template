---
title: "News"
layout: textlay
sitemap: false
permalink: /allnews.html
---

## News

<div class="allnews-grid" markdown="0">
{% assign items = site.news | sort: "date" | reverse %}
{% for article in items %}
  <article class="news-card">
    <a class="news-link" href="{{ article.url | relative_url }}">
      {% if article.image %}
        <img class="news-img" src="{{ article.image | relative_url }}" alt="{{ article.title }}">
      {% endif %}
      <div class="news-text">
        <time class="news-date" datetime="{{ article.date | date_to_xmlschema }}">
          {{ article.date | date: "%-d %B %Y" }}
        </time>
        <h3 class="news-title">{{ article.title }}</h3>
        {% if article.summary %}
          <p class="news-summary">{{ article.summary }}</p>
        {% endif %}
      </div>
    </a>
  </article>
{% endfor %}
</div>


<style>
/* Make the All News list a simple vertical list */
.allnews-grid{
  display: grid;
  grid-template-columns: 1fr;
  gap: 14px;
}

/* Compact card */
.allnews-grid .news-card{
  background:#fff;
  color:#111;
  border-radius:12px;
  box-shadow:0 4px 12px rgba(0,0,0,.12);
}

/* Put a small thumbnail on the left, text on the right */
.allnews-grid .news-link{
  display:flex;
  align-items:flex-start;
  gap:14px;
  padding:12px 14px;
  text-decoration:none;
  color:inherit;
}

/* Thumbnail size (tweak these numbers if you want) */
.allnews-grid .news-img{
  width:96px !important;
  height:72px !important;      /* 4:3 look; try 96x96 for a square */
  object-fit:cover;
  border-radius:8px;
  flex:0 0 auto;
}

/* Text block */
.allnews-grid .news-title{ margin:0 0 4px; font-size:1.05rem; }
.allnews-grid .news-date{ font-size:.9rem; opacity:.7; display:block; margin-bottom:4px; }
.allnews-grid .news-summary{ margin:0; }

/* Dark mode */
@media (prefers-color-scheme: dark){
  .allnews-grid .news-card{ background:#1f1f1f; color:#f0f0f0; }
}
</style>
