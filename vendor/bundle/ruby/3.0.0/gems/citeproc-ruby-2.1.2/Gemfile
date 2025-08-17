source 'https://rubygems.org'
gemspec

#gem 'citeproc', :github => 'inukshuk/citeproc'
#gem 'csl', :github => 'inukshuk/csl-ruby'

group :development, :test do
  gem 'rake'
  gem 'rspec'
  gem 'cucumber'
end

group :debug do
  gem 'debug', '>= 1.0.0', require: false, platforms: :mri
  gem 'ruby-debug', require: false, platforms: :jruby
end

group :optional do
  gem 'edtf'
	gem 'chronic'
end

group :extra do
	gem 'yard', platforms: :mri
	gem 'redcarpet', platforms: :mri
end

group :coverage do
  gem 'simplecov', require: false
  gem 'simplecov-lcov', require: false
end
