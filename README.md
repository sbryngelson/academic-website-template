# Dr. Spencer Bryngelson's academic website

## Acknowledgement

I credit the [Allen Lab](https://www.allanlab.org/) for creating a beautiful academic research group webpage.
This page was, in part, adopted from theirs.
Additional features are present. 
In particular:

* Additions to publication page:
   * Optional buttons for DOI/PDF/ARXIV/BIB/ABSTRACT
   * Bibliography information and abstracts are triggered in drown down wells via buttons
   * Optional visual abstracts shown in each well
* Fontawesome icons included (email, CV, Google scholar, ResearchGate, GitHub, etc.)

## Navbar and pages

* The pages listed in the navbar are located in `_config.yml` file.
The typical options are already included or commented, though additional pages can be created and listed here.
Existing pages should be used as a template for this.
* The header information of the new page (first five lines) should be modified to suit the page.

### Page header information

Example header data for the 'Talks' page is below.
```
---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---
```
The layout variable corresponds to layouts in the `_layouts` directory.
The differences between most layouts is generally subtle and `gridlay` can generally be used.
The permalink must be unique for each page, and corresponds to the directory that will store the page in the compiled HTML.
Refer to your pages in `_config.yml` via their `title`.

## Publication page and database

File `_data/publist.yml` contains the publication database loaded on the 'Publications' page.
Items in that database can be used as examples for your entries.

* If a year is not present, the publication will be listed under the 'Coming Soon' heading.
Otherwise it will be listed below either a 'Journal Papers' heading or the year of publication.
Choosing between these options is available via the `group_pub_by_year` variable in `_config.yml`.
* If the `arXiv` category is present, then an additional button will be placed next to the entry on the publications page.
* For each paper a corresponding PDF can be placed in the `papers/` directory.
The name of this file (with no .pdf extension!) should be placed in the `url` category of its entry in `publist.yml`.
* If an abstract is present, an additional dropdown to show it will be placed next to its entry on the publications page.
* Running `./readyaml.py` (python3 required) will create bibliography files for all publications that have DOIs or arXiv identifiers.
If this is done, an additional dropdown to show it will be placed next to its entry on the publications page.
