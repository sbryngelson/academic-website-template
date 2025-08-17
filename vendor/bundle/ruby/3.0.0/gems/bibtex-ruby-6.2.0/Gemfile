source 'https://rubygems.org'
gemspec

gem 'json', '~>2.0', platforms: %i[mri_18 jruby]

gem 'rdf', '~>3.0'
gem 'rdf-vocab', '~>3.0'

gem 'rexml', '~>3.2'

group :debug do
  gem 'debug', '>= 1.0', require: false, platforms: :mri
end

group :test do
  gem 'cucumber'
  gem 'minitest', require: false
end

group :profile do
  gem 'gnuplot', platforms: [:mri]
  gem 'ruby-prof', platforms: [:mri]
end

group :coverage do
  gem 'simplecov', require: false, platforms: [:ruby]
end

group :development do
  gem 'rake'
  gem 'yard'
end
