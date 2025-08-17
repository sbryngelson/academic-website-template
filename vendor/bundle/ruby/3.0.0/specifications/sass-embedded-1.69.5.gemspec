# -*- encoding: utf-8 -*-
# stub: sass-embedded 1.69.5 ruby lib
# stub: ext/sass/Rakefile

Gem::Specification.new do |s|
  s.name = "sass-embedded".freeze
  s.version = "1.69.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "documentation_uri" => "https://rubydoc.info/gems/sass-embedded/1.69.5", "funding_uri" => "https://github.com/sponsors/ntkme", "source_code_uri" => "https://github.com/ntkme/sass-embedded-host-ruby/tree/v1.69.5" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["\u306A\u3064\u304D".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-10-26"
  s.description = "A Ruby library that will communicate with Embedded Dart Sass using the Embedded Sass protocol.".freeze
  s.email = ["i@ntk.me".freeze]
  s.executables = ["sass".freeze]
  s.extensions = ["ext/sass/Rakefile".freeze]
  s.files = ["exe/sass".freeze, "ext/sass/Rakefile".freeze]
  s.homepage = "https://github.com/ntkme/sass-embedded-host-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Use dart-sass with Ruby!".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<google-protobuf>.freeze, ["~> 3.23"])
    s.add_runtime_dependency(%q<rake>.freeze, [">= 13.0.0"])
  else
    s.add_dependency(%q<google-protobuf>.freeze, ["~> 3.23"])
    s.add_dependency(%q<rake>.freeze, [">= 13.0.0"])
  end
end
