source 'https://rubygems.org'
gemspec

group :development, :test do
  gem 'rake'
  gem 'rspec'
  gem 'stringio'
  gem 'cucumber'
end

group :debug do
  gem 'debug', '>= 1.0.0', require: false, platforms: :mri
  gem 'ruby-debug', require: false, platforms: :jruby
end

group :optional do
  gem 'nokogiri'
end

group :extra do
  gem 'diff-lcs'
  gem 'pry'
  gem 'yard', platforms: :mri
  gem 'redcarpet', platforms: :mri
end

group :coverage do
  gem 'simplecov', require: false
  gem 'simplecov-lcov', require: false
end

# vim: syntax=ruby
