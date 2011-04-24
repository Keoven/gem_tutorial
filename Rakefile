require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'

spec = Gem::Specification.load(Dir['*.gemspec'].first)
gem = Rake::GemPackageTask.new(spec)
gem.define

