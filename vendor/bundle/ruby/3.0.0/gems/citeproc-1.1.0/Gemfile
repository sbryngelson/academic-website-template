source 'https://rubygems.org'
gemspec

group :debug do
  gem 'debug', '>= 1.0.0', require: false, platforms: :mri
  gem 'ruby-debug', require: false, platforms: :jruby
end

group :optional do
  gem 'nokogiri'
  gem 'chronic', require: false
  gem 'edtf'
  gem 'bibtex-ruby', require: 'bibtex'
  gem 'citeproc-ruby' #, github: 'inukshuk/citeproc-ruby'
  #gem 'csl', github: 'inukshuk/csl-ruby'
end

group :development do
  gem 'rake'
  gem 'cucumber'
  gem 'rspec'
  gem 'unicode_utils', require: false unless RUBY_VERSION >= '2.4'
  gem 'csl-styles', '~>2.0', require: false
end

group :coverage do
  gem 'simplecov', require: false
  gem 'simplecov-lcov', require: false
end

group :extra do
  gem 'yard'
  gem 'redcarpet', platform: :mri
end
