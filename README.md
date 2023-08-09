# A website template for academics

## Users

Some users:
<a href="https://ilafly.github.io/" target="_blank">★</a>
<a href="https://i-vesseg.github.io/" target="_blank">★</a>
<a href="https://xfangsn.github.io/" target="_blank">★</a>
<a href="https://joshuagob.github.io" target="_blank">★</a>
<a href="https://bczheng.com/" target="_blank">★</a>
<a href="https://bazilinskyy.github.io/" target="_blank">★</a>
<a href="https://www.coreytcallaghan.com/" target="_blank">★</a>
<a href="https://minseoksong.github.io/" target="_blank">★</a>
<a href="https://acme-group-cmu.github.io/" target="_blank">★</a>
<a href="https://barrylee36.github.io/" target="_blank">★</a>
<a href="https://adisun94.github.io/" target="_blank">★</a>
<a href="https://comp-physics.group" target="_blank">★</a>
<a href="https://spike.doc.ic.ac.uk/" target="_blank">★</a>
<a href="http://www.msc.univ-paris-diderot.fr/~berhanu/" target="_blank">★</a>
<a href="https://mashadab.github.io/" target="_blank">★</a>
<a href="https://home.iitk.ac.in/~lalit/" target="_blank">★</a>
<a href="https://ethan-pickering.github.io/" target="_blank">★</a>
<a href="https://pedro-dm-gomes.github.io/" target="_blank">★</a>
<a href="https://3tbk.github.io/3tbk/" target="_blank">★</a>
<a href="https://felipesua.github.io/" target="_blank">★</a>
<a href="https://shivvrat.github.io/" target="_blank">★</a>
<a href="https://ritamraha.github.io/" target="_blank">★</a>
<a href="https://matsesseldeurs.github.io/" target="_blank">★</a>
<a href="https://michelleblom.github.io/" target="_blank">★</a>
<a href="https://jrd971000.github.io/" target="_blank">★</a>
<a href="https://melashri.net/" target="_blank">★</a>
<a href="https://sahatulika15.github.io" target="_blank">★</a>
<a href="https://mzhanglab.github.io" target="_blank">★</a>
<a href="https://soar-lab.github.io" target="_blank">★</a>




__If you are using this template, feel free to share your site with me and I'll add it here!__

## Introduction 

This is a statically-generated Jekyll/Liquid/Bootstrap-based website template for academics.
I started with the [Allan lab](https://www.allanlab.org/) webpage and modified it into a personal academic webpage that met my requirements.
I worked in a unique set of the features that I desired and could not find in publicly available templates elsewhere.
Some examples are:

* Automatically-generated buttons for DOI/PDF/ARXIV/BIB/Abstract information
  * via Jekyll Scholar
* Bibliography information and abstracts open in drown down wells via buttons
* Fontawesome icons (email, CV, Google scholar, ResearchGate, GitHub, etc.)
* Dark color scheme via Bootswatch
* Consistent and attractive `About me` page

I encourage the use of this webpage as a template for your own academic website.
The remainder of this document describes how to do this.
Broadly speaking, there are three steps:

* [Fork](#fork-and-build)
* [Customize](#customization)
* [Host](#hosting)

## Fork and build

* Fork [this repository](https://github.com/sbryngelson/sbryngelson.github.io) by clicking the `fork` button in the top-right corner of its Github page.
* Install [Jekyll](https://jekyllrb.com/docs/installation/)  (version less than 4.0 required) on your local computer
    * On MacOS, you will need to upgrade your Ruby version from the depricated v2.3 that is shipped. Follow the above Jekyll instructions closely.
* Run `$ bundle exec jekyll serve` in the repository root directory
* Your site is now hosted locally at `localhost:4000`, which you can access with your web browser.
   * It will be automatically re-built as you save changes to the files it contains.
   Refreshing your web browser reveals these changes.

Note:
* This webpage uses Jekyll plugins like Jekyll Scholar to automatically build your bibliography. 
  If you are using Github pages then you will have to build the site with the `Rakefile` in the root directory of the source branch.
  You can do so by first modifying the file as appropriate and then, after pushing your changes, execute `rake publish`.

## Customization

* Modify `_config.yml` as appropriate
* Modify YAML database files, located in `_data/*.yml`, as appropriate
* Modify individual pages, located in `_pages/*.md`, as appropriate

### Navbar

The pages listed in the top navbar are located in `_config.yml` file.
The typical options are already included or commented, though additional pages can be created and listed here.

### Creating or editing pages

All pages are located in the `_pages` directory.
Pages generally load information from YAML databases located as `_data/*.yml`.
Creating new pages can be done by using existing pages as a template.

#### Page header information

All pages require header information.
Example header data for the 'Talks' page is below.
```
---
title: "Talks"
layout: gridlay
sitemap: false
permalink: /talks/
---
```
The `layout` variable corresponds to HTML layouts in the `_layouts` directory.
The differences between most layouts is subtle and `gridlay` can generally be used.
The permalink must be unique for each page, and corresponds to the directory that will store the page in the compiled HTML.
Refer to your pages in `_config.yml` via the `title` variable.

#### Markdown

All pages are written in [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) as `*.md`.
HTML commands and CSS styles can be directly used in a markdown files.

#### Publication page and database

The publications and talks are now listed via Jekyll Scholar.
The bibliography file `ref.bib` is located in the `cv/` directory.
Modify according to your needs.

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

## Alternatives

### Static website generators

A list of static webpage generators is available [here](https://www.staticgen.com/).
For academic purposes, I believe most people use [Jekyll](https://jekyllrb.com/) or [Hugo](https://gohugo.io/).
I am mostly unaware of their relative merits.
However, both are relatively easy to use and offer many templates to base your ideas off of.
This, in combination with their large user bases, make them particularly attractive.
This site is built with Jekyll.

### Templates

Other Jekyll templates are of course available.
Some of these are viable for very simple academic pages with little tuning:
* [Minimal mistakes](https://mmistakes.github.io/minimal-mistakes/)
* [al-folio](https://github.com/alshedivat/al-folio)
* [academicpages](https://academicpages.github.io/)

However, they do not natively include many of the features I list at the top.
For this reason, I decided to construct my own.

## Acknowledgment

I credit the [Allen Lab](https://www.allanlab.org/) for creating a beautiful academic research group webpage.
Many parts of this site were adopted or copied from their laboratory webpage.

## License

Copyright 2021, Spencer H. Bryngelson and controlled via the MIT license.
You can copy and mess with this template.
