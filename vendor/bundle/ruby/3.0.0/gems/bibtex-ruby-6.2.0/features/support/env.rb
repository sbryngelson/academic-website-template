begin
  require 'simplecov'
  require 'coveralls' if ENV['CI']
rescue LoadError
  # ignore
end

begin
  require 'debug' unless RUBY_PLATFORM == 'java'
rescue LoadError
  # ignore
end

require 'minitest'
require 'bibtex'

World(Minitest::Assertions)
