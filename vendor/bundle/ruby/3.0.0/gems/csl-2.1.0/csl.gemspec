# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'csl/version'

EXCLUDES = %w{
  .coveralls.yml
  .travis.yml
  .csl.gemspec
  .simplecov
  .rspec
} | `git ls-files -- {spec,features}/*`.split("\n")

Gem::Specification.new do |s|
  s.name        = 'csl'
  s.version     = CSL::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Sylvester Keil']
  s.email       = ['http://sylvester.keil.or.at']
  s.homepage    = 'https://github.com/inukshuk/csl-ruby'
  s.licenses     = ['BSD-2-Clause']
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'A Ruby CSL parser and library'
  s.description = <<~EOS
		A Ruby parser and full API for the Citation Style Language (CSL),
		an open XML-based language to describe the formatting of citations
		and bibliographies.
	EOS


  s.required_ruby_version = '>= 2.2'
  s.add_dependency('namae', ['~> 1.2'])
  s.add_dependency('rexml', '~> 3.0')
  s.add_dependency('forwardable', '~> 1.3')
  s.add_dependency('open-uri', '< 1.0')
  s.add_dependency('singleton', '< 1.0')
  s.add_dependency('set', '~> 1.1')
  s.add_dependency('time', '< 1.0')

  s.files        = `git ls-files`.split("\n") - EXCLUDES
  s.require_path = 'lib'
end

# vim: syntax=ruby
