# -*- encoding: utf-8 -*-
# stub: namae 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "namae".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sylvester Keil".freeze]
  s.date = "2024-01-10"
  s.description = " Namae (\u540D\u524D) is a parser for human names. It recognizes personal names of various cultural backgrounds and tries to split them into their component parts (e.g., given and family names, honorifics etc.). ".freeze
  s.email = ["sylvester@keil.or.at".freeze]
  s.extra_rdoc_files = ["README.md".freeze, "AGPL".freeze]
  s.files = ["AGPL".freeze, "README.md".freeze]
  s.homepage = "https://github.com/berkmancenter/namae".freeze
  s.licenses = ["AGPL-3.0".freeze, "BSD-2-Clause".freeze]
  s.rdoc_options = ["--line-numbers".freeze, "--inline-source".freeze, "--title".freeze, "'Namae'".freeze, "--main".freeze, "README.md".freeze, "--exclude".freeze, "lib/namae/parser.rb".freeze]
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Namae (\u540D\u524D) parses personal names and splits them into their component parts.".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<racc>.freeze, ["~> 1.7"])
  else
    s.add_dependency(%q<racc>.freeze, ["~> 1.7"])
  end
end
