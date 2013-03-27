# encoding: utf-8
require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "unbork"
  gem.homepage = "http://github.com/k3rni/unbork"
  gem.license = "MIT"
  gem.summary = %Q{Unbörk your strings from MySQL's default Swedish encoding}
  gem.description = %Q{Based on a blog post by Rowan Thorpe (http://rowanthorpe.wordpress.com/2012/10/15/unmangle-utf-8-from-double-encoded-utf-8-my-shell-script-and-batch-script-tweaks/), forcefully replaces broken UTF-8 encoded as pairs of Latin-1 characters. Includes a verbatim copy of Rowan's sed script.  }
  gem.email = "krzysztof.zych@connectmedica.com"
  gem.authors = ["Krzysztof Zych"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  #  gem.add_runtime_dependency 'jabber4r', '> 0.1'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "unbork #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
