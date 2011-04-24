require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/gempackagetask'
require 'rake/rdoctask'

spec = Gem::Specification.load(Dir['*.gemspec'].first)
package = Rake::GemPackageTask.new(spec)
package.define
