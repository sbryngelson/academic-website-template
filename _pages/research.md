---
title: "Research"
layout: gridlay
sitemap: false
permalink: /research/
---

## Research

<input type="text" class="pub-search" id="researchSearch" placeholder="Search by title or keyword...">

{% comment %}
  Keywords are auto-collected from _data/research.yml at build time.
  Adding or removing keywords in research.yml will automatically update the filter buttons below.
{% endcomment %}
{% assign kw_string = "" %}
{% for item in site.data.research %}
  {% if item.keywords %}
    {% for kw in item.keywords %}
      {% if kw and kw != "" %}
        {% assign kw_string = kw_string | append: kw | append: "|||" %}
      {% endif %}
    {% endfor %}
  {% endif %}
{% endfor %}
{% assign kw_array = kw_string | split: "|||" | uniq | sort %}

<div class="research-filter-bar">
<button class="research-filter-btn active" data-kw="__all__">All</button>
{% for kw in kw_array %}{% if kw != "" %}<button class="research-filter-btn" data-kw="{{ kw | downcase }}">{{ kw }}</button>{% endif %}{% endfor %}
</div>

{% assign sorted_research = site.data.research | sort: "end_date" | reverse %}
<div class="research-list" id="researchList">
{% for item in sorted_research %}
{% assign kw_joined = item.keywords | join: "|" %}
<div class="research-card-h" data-research-searchable data-keywords="{{ kw_joined | downcase }}">
<div class="research-card-h-img">
{% if item.image and item.image != "" %}
<img src="{{ site.url }}{{ site.baseurl }}/images/{{ item.image }}" alt="{{ item.title }}" loading="lazy">
{% else %}
<div class="research-card-h-img-placeholder"><i class="fa-solid fa-flask"></i></div>
{% endif %}
</div>
<div class="research-card-h-body">
<h3 class="research-card-h-title">{{ item.title }}</h3>
{% if item.start_date %}
<p class="research-duration">
<i class="fa-regular fa-calendar"></i>
{{ item.start_date }}{% if item.end_date %} &ndash; {{ item.end_date }}{% else %} &ndash; Present{% endif %}
</p>
{% endif %}
{% if item.keywords %}
<div class="research-card-h-keywords">
{% for kw in item.keywords %}<span class="research-kw">{{ kw }}</span>{% endfor %}
</div>
{% endif %}
<p class="research-card-h-abstract">{{ item.abstract }}</p>
{% assign has_link = false %}
{% if item.links.paper and item.links.paper != "" %}{% assign has_link = true %}{% endif %}
{% if item.links.webpage and item.links.webpage != "" %}{% assign has_link = true %}{% endif %}
{% if item.links.video and item.links.video != "" %}{% assign has_link = true %}{% endif %}
{% if item.links.bib and item.links.bib != "" %}{% assign has_link = true %}{% endif %}
{% if has_link %}
<div class="research-card-h-links">
{% if item.links.paper and item.links.paper != "" %}<a href="{{ item.links.paper }}" target="_blank" class="research-link"><i class="fa-regular fa-file-pdf"></i> Paper</a>{% endif %}
{% if item.links.webpage and item.links.webpage != "" %}<a href="{{ item.links.webpage }}" target="_blank" class="research-link"><i class="fa-solid fa-globe"></i> Webpage</a>{% endif %}
{% if item.links.video and item.links.video != "" %}<a href="{{ item.links.video }}" target="_blank" class="research-link"><i class="fa-brands fa-youtube"></i> Video</a>{% endif %}
{% if item.links.bib and item.links.bib != "" %}<a href="{{ item.links.bib }}" target="_blank" class="research-link"><i class="fa-solid fa-quote-right"></i> BibTeX</a>{% endif %}
</div>
{% endif %}
</div>
</div>
{% endfor %}
</div>

<script>
(function () {
  var searchInput = document.getElementById('researchSearch');
  var filterBtns = document.querySelectorAll('.research-filter-btn');
  var cards = document.querySelectorAll('[data-research-searchable]');
  var activeKw = '__all__';

  function applyFilters() {
    var query = searchInput ? searchInput.value.toLowerCase().trim() : '';
    cards.forEach(function (card) {
      var text = card.textContent.toLowerCase();
      var kwAttr = card.getAttribute('data-keywords') || '';
      var kwArr = kwAttr.split('|').map(function (k) { return k.trim(); });
      var matchesText = !query || text.includes(query);
      var matchesKw = activeKw === '__all__' || kwArr.indexOf(activeKw) >= 0;
      card.style.display = (matchesText && matchesKw) ? '' : 'none';
    });
  }

  if (searchInput) {
    searchInput.addEventListener('input', applyFilters);
  }

  filterBtns.forEach(function (btn) {
    btn.addEventListener('click', function () {
      filterBtns.forEach(function (b) { b.classList.remove('active'); });
      btn.classList.add('active');
      activeKw = btn.getAttribute('data-kw');
      applyFilters();
    });
  });
})();
</script>
