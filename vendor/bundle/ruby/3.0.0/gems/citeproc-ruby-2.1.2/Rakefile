# encoding: utf-8

require 'bundler'
begin
  Bundler.setup
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

$:.unshift(File.join(File.dirname(__FILE__), './lib'))
require 'citeproc/ruby/version'

desc 'Run a Pry session with CiteProc-Ruby loaded'
task :console do
  ARGV.clear
  require 'irb'
  require 'citeproc/ruby'
  IRB.start
end

task :check_warnings do
  $VERBOSE = true
  require 'citeproc/ruby'
  puts CiteProc::Ruby::VERSION
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:cucumber) do |t|
  t.profile = 'default'
end

task :release do |t|
  system "gem build citeproc-ruby.gemspec"
  system "git tag #{CiteProc::Ruby::VERSION}"
  system "git push --tags"
  system "gem push citeproc-ruby-#{CiteProc::Ruby::VERSION}.gem"
end

task :default => [:spec, :cucumber]

begin
  require 'yard'
  YARD::Rake::YardocTask.new
rescue LoadError => e
  # ignore
end
