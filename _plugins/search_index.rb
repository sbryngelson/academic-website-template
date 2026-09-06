# Generates assets/search.json from the rendered HTML of every page and post.
#
# This runs after all Liquid and Markdown processing has finished, so the index
# never contains raw {{ tags }} or Markdown syntax (the previous Liquid-template
# approach read page.content before some pages had been rendered).
#
# Add `search: false` to a page's front matter to keep it out of the index.

require 'cgi'
require 'json'

module SearchIndex
  EXCLUDED_URLS = ['/404.html'].freeze
  MAX_CHARS = 5000

  # Markup that carries no searchable prose: scripts, styles, publication
  # action buttons, and the collapsed BibTeX/abstract blocks.
  NOISE = [
    %r{<(script|style)[^>]*>.*?</\1>}m,
    %r{<div class="pub-actions">.*?</div>}m,
    %r{<div class="pub-collapse"[^>]*>.*?</div>}m
  ].freeze

  def self.text(html)
    main = html[%r{<main[^>]*>(.*)</main>}m, 1] || html
    NOISE.each { |re| main = main.gsub(re, ' ') }
    main = main.gsub(/<[^>]+>/, ' ')
    CGI.unescapeHTML(main).gsub(/\s+/, ' ').strip[0, MAX_CHARS]
  end

  def self.entry(site, doc)
    {
      'title'   => doc.data['title'].to_s,
      'url'     => site.config['baseurl'].to_s + doc.url,
      'content' => text(doc.output.to_s)
    }
  end
end

Jekyll::Hooks.register :site, :post_render do |site|
  pages = site.pages.select { |p| p.output_ext == '.html' && p.data['title'] }
  posts = site.posts.docs
  docs  = (pages + posts).reject do |d|
    SearchIndex::EXCLUDED_URLS.include?(d.url) || d.data['search'] == false
  end

  index = Jekyll::PageWithoutAFile.new(site, site.source, 'assets', 'search.json')
  index.output = JSON.generate(docs.map { |d| SearchIndex.entry(site, d) })
  site.pages << index
end
