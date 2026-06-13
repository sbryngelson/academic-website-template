// =============================================================
// site.js — Dark mode, publication filter, toggles, scroll effects,
//           copy bibtex, back-to-top, year badges
// =============================================================

(function () {
  'use strict';

  // ----- Dark Mode Toggle -----

  var toggle = document.getElementById('darkModeToggle');
  var icon = document.getElementById('themeIcon');

  function updateIcon() {
    if (!icon) return;
    var theme = document.documentElement.getAttribute('data-bs-theme');
    if (theme === 'dark') {
      icon.className = 'fa-solid fa-moon';
    } else {
      icon.className = 'fa-solid fa-sun';
    }
  }

  if (toggle) {
    updateIcon();

    toggle.addEventListener('click', function () {
      var current = document.documentElement.getAttribute('data-bs-theme');
      var next = current === 'dark' ? 'light' : 'dark';
      document.documentElement.setAttribute('data-bs-theme', next);
      localStorage.setItem('theme', next);
      updateIcon();
    });
  }

  // ----- Publication Expand/Collapse -----

  document.addEventListener('click', function (e) {
    var button = e.target.closest('[data-toggle-target]');
    if (!button) return;

    var targetId = button.getAttribute('data-toggle-target');
    var target = document.getElementById(targetId);
    if (!target) return;

    target.classList.toggle('show');
  });

  // ----- Publication Search/Filter -----

  var searchInput = document.getElementById('pubSearch');
  if (searchInput) {
    searchInput.addEventListener('input', function () {
      var query = this.value.toLowerCase().trim();
      var entries = document.querySelectorAll('[data-pub-searchable]');

      entries.forEach(function (entry) {
        if (!query) {
          entry.style.display = '';
          return;
        }
        var text = entry.textContent.toLowerCase();
        entry.style.display = text.includes(query) ? '' : 'none';
      });
    });
  }

  // ----- Research Search + Keyword Filter -----

  var researchSearch = document.getElementById('researchSearch');
  var filterBtns = document.querySelectorAll('.research-filter-btn');
  var activeKw = '__all__';

  function applyResearchFilters() {
    var query = researchSearch ? researchSearch.value.toLowerCase().trim() : '';
    var cards = document.querySelectorAll('[data-research-searchable]');

    cards.forEach(function (card) {
      var text = card.textContent.toLowerCase();
      var kwAttr = card.getAttribute('data-keywords') || '';
      var kwArr = kwAttr.split('|').map(function (k) { return k.trim(); });

      var matchesText = !query || text.includes(query);
      var matchesKw = activeKw === '__all__' || kwArr.indexOf(activeKw) >= 0;

      card.style.display = (matchesText && matchesKw) ? '' : 'none';
    });
  }

  if (researchSearch) {
    researchSearch.addEventListener('input', applyResearchFilters);
  }

  filterBtns.forEach(function (btn) {
    btn.addEventListener('click', function () {
      filterBtns.forEach(function (b) { b.classList.remove('active'); });
      this.classList.add('active');
      activeKw = this.getAttribute('data-kw');
      applyResearchFilters();
    });
  });

  // ----- Copy BibTeX Button -----

  document.querySelectorAll('.pub-collapse').forEach(function (collapse) {
    // Only add copy to bibtex blocks (id starts with "bib-")
    if (!collapse.id || !collapse.id.startsWith('bib-')) return;

    var pre = collapse.querySelector('pre');
    if (!pre) return;

    var wrapper = document.createElement('div');
    wrapper.className = 'copy-wrapper';
    wrapper.style.position = 'relative';

    var btn = document.createElement('button');
    btn.className = 'copy-btn';
    btn.innerHTML = '<i class="fa-regular fa-copy"></i>';
    btn.title = 'Copy to clipboard';

    btn.addEventListener('click', function () {
      navigator.clipboard.writeText(pre.textContent.trim()).then(function () {
        btn.innerHTML = '<i class="fa-solid fa-check"></i>';
        btn.classList.add('copied');
        setTimeout(function () {
          btn.innerHTML = '<i class="fa-regular fa-copy"></i>';
          btn.classList.remove('copied');
        }, 2000);
      });
    });

    pre.parentNode.insertBefore(wrapper, pre);
    wrapper.appendChild(pre);
    wrapper.appendChild(btn);
  });

  // ----- Publication Year Badges -----

  document.querySelectorAll('.pub-entry').forEach(function (entry) {
    var text = entry.textContent;
    // Match a 4-digit year in parentheses, common in citation format
    var match = text.match(/\((\d{4})\)/);
    if (match) {
      var badge = document.createElement('span');
      badge.className = 'year-badge';
      badge.textContent = match[1];
      entry.insertBefore(badge, entry.firstChild);
    }
  });

  // ----- Back to Top Button -----

  var topBtn = document.createElement('button');
  topBtn.className = 'back-to-top';
  topBtn.innerHTML = '<i class="fa-solid fa-arrow-up"></i>';
  topBtn.setAttribute('aria-label', 'Back to top');
  document.body.appendChild(topBtn);

  topBtn.addEventListener('click', function () {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  });

  window.addEventListener('scroll', function () {
    if (window.scrollY > 400) {
      topBtn.classList.add('visible');
    } else {
      topBtn.classList.remove('visible');
    }
  }, { passive: true });

  // ----- Navbar Scroll Shadow -----

  var navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', function () {
      if (window.scrollY > 10) {
        navbar.classList.add('scrolled');
      } else {
        navbar.classList.remove('scrolled');
      }
    }, { passive: true });
  }

  // ----- Fade-in on Scroll -----

  var fadeElements = document.querySelectorAll('.fade-in-section');
  if (fadeElements.length > 0 && 'IntersectionObserver' in window) {
    var observer = new IntersectionObserver(function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target);
        }
      });
    }, {
      threshold: 0.1,
      rootMargin: '0px 0px -40px 0px'
    });

    fadeElements.forEach(function (el) {
      observer.observe(el);
    });
  } else {
    fadeElements.forEach(function (el) {
      el.classList.add('visible');
    });
  }

  // ----- Site Search -----

  var searchToggleBtn = document.getElementById('searchToggle');
  var searchOverlay = document.getElementById('searchOverlay');
  var searchInputEl = document.getElementById('searchInput');
  var searchResultsEl = document.getElementById('searchResults');
  var searchData = null;

  function openSearch() {
    if (!searchOverlay) return;
    searchOverlay.classList.add('open');
    setTimeout(function () { searchInputEl.focus(); }, 100);
  }

  function closeSearch() {
    if (!searchOverlay) return;
    searchOverlay.classList.remove('open');
    searchInputEl.value = '';
    searchResultsEl.innerHTML = '';
  }

  if (searchToggleBtn) {
    searchToggleBtn.addEventListener('click', openSearch);
  }

  if (searchOverlay) {
    searchOverlay.addEventListener('click', function (e) {
      if (e.target === searchOverlay) closeSearch();
    });
  }

  document.addEventListener('keydown', function (e) {
    if (e.key === 'Escape' && searchOverlay && searchOverlay.classList.contains('open')) {
      closeSearch();
    }
    // Cmd/Ctrl + K to open search
    if ((e.metaKey || e.ctrlKey) && e.key === 'k') {
      e.preventDefault();
      if (searchOverlay && searchOverlay.classList.contains('open')) {
        closeSearch();
      } else {
        openSearch();
      }
    }
  });

  function loadSearchData(callback) {
    if (searchData) { callback(searchData); return; }
    fetch('/assets/search.json')
      .then(function (r) { return r.json(); })
      .then(function (data) {
        searchData = data;
        callback(data);
      })
      .catch(function () {
        searchResultsEl.innerHTML = '<div class="search-no-results">Could not load search index.</div>';
      });
  }

  function renderResults(query, data) {
    if (!query) {
      searchResultsEl.innerHTML = '';
      return;
    }
    var q = query.toLowerCase();
    var matches = data.filter(function (item) {
      return item.title.toLowerCase().includes(q) ||
             item.content.toLowerCase().includes(q);
    });

    if (matches.length === 0) {
      searchResultsEl.innerHTML = '<div class="search-no-results">No results for "' + query + '"</div>';
      return;
    }

    searchResultsEl.innerHTML = matches.map(function (item) {
      var snippet = item.content.substring(0, 150).trim() + '...';
      return '<a href="' + item.url + '" class="search-result-item">' +
        '<div class="search-result-title">' + item.title + '</div>' +
        '<div class="search-result-snippet">' + snippet + '</div>' +
        '</a>';
    }).join('');
  }

  if (searchInputEl) {
    var debounceTimer;
    searchInputEl.addEventListener('input', function () {
      var query = this.value.trim();
      clearTimeout(debounceTimer);
      debounceTimer = setTimeout(function () {
        loadSearchData(function (data) {
          renderResults(query, data);
        });
      }, 150);
    });
  }

})();
