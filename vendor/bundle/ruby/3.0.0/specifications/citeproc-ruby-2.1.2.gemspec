# -*- encoding: utf-8 -*-
# stub: citeproc-ruby 2.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "citeproc-ruby".freeze
  s.version = "2.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sylvester Keil".freeze]
  s.date = "2025-06-20"
  s.description = "CiteProc-Ruby is a Citation Style Language (CSL) 1.0.1 compatible cite\nprocessor implementation written in pure Ruby.\n".freeze
  s.email = ["http://sylvester.keil.or.at".freeze]
  s.homepage = "https://github.com/inukshuk/citeproc-ruby".freeze
  s.licenses = ["BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "A Citation Style Language (CSL) cite processor".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<citeproc>.freeze, ["~> 1.0", ">= 1.0.9"])
    s.add_runtime_dependency(%q<csl>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<observer>.freeze, ["< 1.0"])
  else
    s.add_dependency(%q<citeproc>.freeze, ["~> 1.0", ">= 1.0.9"])
    s.add_dependency(%q<csl>.freeze, ["~> 2.0"])
    s.add_dependency(%q<observer>.freeze, ["< 1.0"])
  end
end
