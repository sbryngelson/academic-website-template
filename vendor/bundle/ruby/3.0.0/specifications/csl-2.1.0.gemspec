# -*- encoding: utf-8 -*-
# stub: csl 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "csl".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sylvester Keil".freeze]
  s.date = "2025-01-22"
  s.description = "A Ruby parser and full API for the Citation Style Language (CSL),\nan open XML-based language to describe the formatting of citations\nand bibliographies.\n".freeze
  s.email = ["http://sylvester.keil.or.at".freeze]
  s.homepage = "https://github.com/inukshuk/csl-ruby".freeze
  s.licenses = ["BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "A Ruby CSL parser and library".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<namae>.freeze, ["~> 1.2"])
    s.add_runtime_dependency(%q<rexml>.freeze, ["~> 3.0"])
    s.add_runtime_dependency(%q<forwardable>.freeze, ["~> 1.3"])
    s.add_runtime_dependency(%q<open-uri>.freeze, ["< 1.0"])
    s.add_runtime_dependency(%q<singleton>.freeze, ["< 1.0"])
    s.add_runtime_dependency(%q<set>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<time>.freeze, ["< 1.0"])
  else
    s.add_dependency(%q<namae>.freeze, ["~> 1.2"])
    s.add_dependency(%q<rexml>.freeze, ["~> 3.0"])
    s.add_dependency(%q<forwardable>.freeze, ["~> 1.3"])
    s.add_dependency(%q<open-uri>.freeze, ["< 1.0"])
    s.add_dependency(%q<singleton>.freeze, ["< 1.0"])
    s.add_dependency(%q<set>.freeze, ["~> 1.1"])
    s.add_dependency(%q<time>.freeze, ["< 1.0"])
  end
end
