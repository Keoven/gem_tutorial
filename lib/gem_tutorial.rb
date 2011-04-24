module GemTutorial
  def self.gem_tutorial
    puts 'This is a gem tutorial'
  end

  require 'engine' if defined?(Rails) &&
    Rails::VERSION::MAJOR == 3
end
