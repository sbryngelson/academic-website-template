# Dr. Spencer Bryngelson's academic website

## Acknowledgment

I credit the [Allen Lab](https://www.allanlab.org/) for creating a beautiful academic research group webpage.
This page was, in part, adopted from theirs.
Additional features are present. 
In particular:

* Additions to publication page:
   * Automatically-generated buttons for DOI/PDF/ARXIV/BIB/ABSTRACT
   * Automatically-generated bibliography files for arXiv and DOI-equipped publications
   * Bibliography information and abstracts are triggered in drown down wells via buttons
   * Optional visual abstracts shown in each well
* Fontawesome icons included (email, CV, Google scholar, ResearchGate, GitHub, etc.)
* Dark color scheme
* `About me` page

## Installation 

* Install [Jekyll](https://jekyllrb.com/docs/installation/) (version < 4.0 required)
  * Run `$ bundle exec jekyll serve` in the site root directory
  * If successful, the locally-built site will be hosted at `localhost:4000` which you can access with your web browser
* Modify `_config.yml` as appropriate
* Modify pages in `_pages/` as appropriate (also see Navbar and pages below)

## Navbar and pages

* The pages listed in the navbar are located in `_config.yml` file.
The typical options are already included or commented, though additional pages can be created and listed here.
Existing pages should be used as a template for this.
* The header information of the new page (first five lines) should be modified to suit the page.
* Pages generally load information from YAML databases located as `_data/*.yml`.

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
* If an abstract is present, an additional drop down to show it will be placed next to its entry on the publications page.
* Running `./readyaml.py` (Python3 required) will create bibliography files for all publications that have DOIs or arXiv identifiers.
If this is done, an additional drop down to show it will be placed next to its entry on the publications page.

## Hosting

Once your site has been modified to fit your needs, you should host it somewhere so others can access it.

### Github pages

A simple way to host your site for free is via [Github Pages](https://pages.github.com/).
This will provide you a free domain name at your_github_username.github.io.
Instructions on how to do this are available on their page.
They generally involve creating a repository on your Github titled `your_github_username.github.io` and uploading your files there (everything excepted the `_site/` directory, which the Github Pages service will generate using its own version of Jekyll).
Then, Github will automatically rebuild your site every time you push a commit to the repository (no bundle/jekyll commands required).

### Custom domain names

You can use a standard domain service (e.g. [GoDaddy](https://www.godaddy.com/)) to purchase a domain name.
Then, using the `CNAME` file and modifying the DNS settings of the domain service, you can direct your custom domain to the Github Pages-generated site.
Detailed instructions for doing this for GoDaddy domains are available [here](https://hackernoon.com/how-to-set-up-godaddy-domain-with-github-pages-a9300366c7b), though analogous instructions apply to other services.


### Hosting elsewhere

If you already have a hosting service for a static HTML webpage, such as some universities provide, you can build your website locally using `bundle exec jekyll serve`.
Then, upload the resulting files located in the `_site/` directory via SSH or FTP to this server.
Be sure that the `site.url` and `site.baseurl` are set appropriately in the `_config.yml` file.



