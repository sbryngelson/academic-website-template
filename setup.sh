#!/usr/bin/env bash
# =============================================================
# Academic Website Template — Quick Setup
#
#   ./setup.sh           fill in your name, title, institution and email
#   ./setup.sh --clean   also remove the Feynman demo content first
# =============================================================
set -euo pipefail
cd "$(dirname "$0")"

CLEAN=false
for arg in "$@"; do
  case "$arg" in
    --clean) CLEAN=true ;;
    -h|--help) sed -n '2,7p' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) echo "Unknown option: $arg"; exit 1 ;;
  esac
done

# Check for old-style config (migration detection)
if grep -q "^affiliation:" _config.yml 2>/dev/null; then
  echo "It looks like you have an old-style _config.yml."
  echo "See UPGRADING.md for migration instructions."
  exit 1
fi

# -------------------------------------------------------------
# Remove the demo content, leaving commented skeleton files
# -------------------------------------------------------------
clean_demo() {
  echo "This removes the demo content (Feynman data, posts, papers, demo images)."
  read -rp "Continue? [y/N] " yn
  case "$yn" in y|Y|yes|YES) ;; *) echo "Aborted."; exit 1 ;; esac

  # Data files: keep the field documentation, drop the entries
  for f in _data/*.yml; do
    { echo "# See README.md (Data Files) for the fields used in this file."; grep '^#' "$f"; } > "$f.tmp"
    mv "$f.tmp" "$f"
  done
  rm -f _data/great_mathematicians_and_physicists.csv

  # Publications
  printf '@comment{Add your BibTeX entries here. See README.md for the supported fields.}\n' > assets/ref.bib
  rm -f papers/*.pdf; touch papers/.gitkeep

  # Blog posts and demo images
  rm -f _posts/*.md; touch _posts/.gitkeep
  rm -f images/team/*.svg images/research/*.svg images/banner.webp images/headshot.jpg images/rock.jpg

  # Pages with demo prose
  cat > _pages/home.md <<'PAGE'
---
title: "Home"
layout: homelay
permalink: /
---

<h1 class="home-hero">{{ site.name }}</h1>
<p class="home-hero-sub">{{ site.title }}, {{ site.institution }}</p>

Introduce your research in a few sentences. This first paragraph is set slightly larger than the rest.

{% capture selected %}{% bibliography --query @*[selected=true] %}{% endcapture %}
{% if selected contains "pub-entry" %}
## Selected publications

<div class="section-card selected-pubs" markdown="0">
{{ selected }}
<p style="margin: var(--space-4) 0 0;"><a href="{{ '/publications' | relative_url }}">All publications &rarr;</a></p>
</div>
{% endif %}

## About me

Your biography goes here. The README shows how to add research-area chips, callout boxes, and a banner image.
PAGE

  cat > _pages/research.md <<'PAGE'
---
title: "Research"
layout: page
permalink: /research/
---

# Research

Describe your research areas here. Each card below is a research area; copy the block to add more.

<div class="research-grid">

<div class="research-card">
<img src="{{ '/images/placeholder.svg' | relative_url }}" class="research-thumb" width="400" height="200" alt="">
<div class="research-body">
<h2 class="research-title">Research area</h2>
<p class="research-desc">One or two sentences about this line of work.</p>
</div>
</div>

</div>
PAGE

  # Team page: drop the demo call-outs
  sed -i.bak -e '/^\*\*We are looking for new team members!\*\*$/d' \
             -e '/^## Administrative Support$/,$d' _pages/team.md
  rm -f _pages/team.md.bak

  # Config: placeholder photo, no demo links
  sed -i.bak -e 's/^photo: .*/photo: placeholder.svg  # place your photo in images\/ and update this/' \
             -e 's|^  google_scholar: .*|  google_scholar: ""|' \
             -e 's|^  github: .*|  github: ""|' \
             -e 's|^  researchgate: .*|  researchgate: ""|' _config.yml
  rm -f _config.yml.bak
  echo "Demo content removed."
  echo ""
}

echo ""
echo "============================================="
echo "  Academic Website Template — Quick Setup"
echo "============================================="
echo ""

if $CLEAN; then clean_demo; fi

read -rp "Your full name: " NAME
read -rp "Your title (e.g., Professor of Physics): " TITLE
read -rp "Your institution: " INSTITUTION
read -rp "Your email: " EMAIL

# Derive the name forms used to bold you in the publication list
LAST="${NAME##* }"
INITIAL="${NAME:0:1}."

echo ""
echo "Updating _config.yml..."
sed -i.bak -e "s/^name: .*/name: \"$NAME\"/" \
           -e "s/^title: .*/title: \"$TITLE\"/" \
           -e "s/^institution: .*/institution: \"$INSTITUTION\"/" \
           -e "s/^email: .*/email: $EMAIL/" \
           -e "s/^description: .*/description: \"Academic webpage of $NAME\"/" \
           -e "s/^  last_name: .*/  last_name: $LAST/" \
           -e "s/^  first_name: .*/  first_name: [\"$INITIAL\"]/" _config.yml
rm -f _config.yml.bak

echo "Done!"
echo ""
echo "============================================="
echo "  Next steps:"
echo "============================================="
echo ""
echo "  1. Add your profile photo to images/"
echo "     (update 'photo' in _config.yml to match)"
echo ""
echo "  2. Add your links in _config.yml (Step 2)"
echo ""
echo "  3. Add your publications to assets/ref.bib"
echo "     (check scholar.first_name in _config.yml matches how"
echo "      your initials appear in the rendered list, e.g. \"J. A.\")"
echo ""
echo "  4. Fill in the data files in _data/"
echo "     (team_members.yml, news.yml, talks.yml, ...)"
echo ""
echo "  5. Preview your site:"
echo "     bundle exec jekyll serve"
echo ""
