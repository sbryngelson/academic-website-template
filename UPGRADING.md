# Upgrading from the Previous Template

If you're already using the old version of this template, follow these steps to migrate.

## 1. Update _config.yml

The new config uses a simplified format. Move these fields:

**Old format (remove):**
```yaml
title: Richard Feynman
affiliation: >
  Richard Feynman<br/>
  Professor of Physics<br/>
  California Institute of Technology
location: >
  ...
contact: >
  ...
```

**New format (add):**
```yaml
name: "Richard Feynman"
title: "Professor of Physics"
institution: "California Institute of Technology"
email: richard@university.edu
photo: headshot.jpg
links:
  google_scholar: "..."
  github: "..."
accent_color: "#2563eb"
dark_mode: true
analytics:
  google_id: ""
```

## 2. Update _data/pi.yml

Basic PI info (name, photo, email, links) now lives in `_config.yml`. The `pi.yml` file only needs education data:

```yaml
- education:
    - "(1942) Ph.D. Physics, Princeton University"
  educationshort:
    - "(1942) Ph.D. Physics, Princeton"
```

## 3. Organize Images (Optional)

New subdirectories are available:
- `images/team/` — team member photos
- `images/research/` — research thumbnails
- `images/banner/` — banner images

Your existing flat `images/` structure still works.

## 4. Data Files

Field names in `team_members.yml`, `alumni.yml`, `news.yml`, etc. are unchanged. Your existing data files should work as-is.

## 5. Publications

`assets/ref.bib` format is unchanged. Jekyll Scholar config stays in `_config.yml`. Update the `scholar.last_name` and `scholar.first_name` fields.

## 6. Custom CSS

If you added custom CSS to `SHB_css.scss`, move it to a new file in `_sass/` and import it in `assets/main.scss`.

## 7. Install & Test

```bash
bundle install
bundle exec jekyll serve
```

## 8. Changes in the 2026 cleanup

If you copied the template before September 2026, note these changes:

- Layouts `gridlay`, `team`, `research`, `textlay`, `piclay`, and `publications` were identical and are now a single `page` layout. Change `layout:` in your `_pages/*.md` front matter to `page`.
- The blog index moved from `/blogs/` to `/blog/`, and posts are published at `/blog/<year>/<title>/` (set by `permalink` in `_config.yml`). The nav entry is `- name: blog`.
- Links use Jekyll's `relative_url` filter instead of `{{ site.url }}{{ site.baseurl }}`, so local preview works even when `url` is set.
- `assets/js/site.js` is loaded directly; `site.min.js`, `package.json`, and the npm build step are gone.
- Name bolding in publications is driven by `scholar.last_name` and `scholar.first_name` in `_config.yml`; write them as they appear in the rendered list (`Last, F. M.`).
- `sitemap: false` was removed from the page front matter so pages appear in `sitemap.xml`.
- `Gemfile.lock` is committed. Run `bundle install` once after pulling.
- `CNAME` and `_config_demo.yml` were removed. The deploy workflow now reads your site's URL and base path from Settings > Pages, so neither file is needed.
- Font Awesome and Academicons are gone. Icons are inline SVG: replace `<i class="fa-solid fa-envelope"></i>` with `{% include icon.html name="envelope" %}` (names: github, envelope, google-scholar, researchgate, orcid, cv, linkedin, x-twitter, house, sun, moon, search, copy, check, award, arrow-up). Add more in `_includes/icons.svg`.
- Fonts are self-hosted from `assets/fonts/`; the Google Fonts `<link>` is gone.
- MathJax loads only on pages with `math: true` in their front matter (or `math: true` in `_config.yml`).
- Bootstrap's JavaScript is no longer shipped; the mobile menu is handled in `assets/js/site.js`. Bootstrap's `buttons`, `card`, `dropdown` and `close` SCSS modules are no longer imported.
- Page titles are `# Title` (h1) instead of `## Title`; section headings remain `##`.
- Talks moved from `@incollection` BibTeX entries to `_data/talks.yml`; teaching and software pages are generated from `_data/teaching.yml` and `_data/software.yml`.
- `_data/people.yml` and the About page's "Students and Mentoring" list were removed (they duplicated `alumni.yml`).
- Publication links come from BibTeX fields (`arxiv`, `url`, `code`, `slides`, `video`, `poster`, `data`); an arXiv id in the `doi` field of an `@unpublished` entry still works. The year badge is taken from the `year` field. `selected = {true}` lists an entry on the home page.
- URLs are no longer printed inside the reference text (`citesty.csl`); they appear as buttons.
- Vendored Bootstrap SCSS is 5.3.8 (was 5.3.3; no visual change). MathJax is loaded from `mathjax@4` (was `@3`); if you customized `_includes/mathjax.html`, note the v4 script path has no `es5/` directory. CI runs on Ruby 4.0 (and 3.4).
- `favicon.ico` was removed from the repository; the deploy workflow now rasterizes it (and `apple-touch-icon.png`) from the generated `favicon.svg`.
