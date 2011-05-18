require 'rails/generators'
require 'rails/generators/migration'

class GemTutorialGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__),'..', '..', '..', 'db', 'migrate')
  end

  def self.next_migration_number(dirname)
    if ActiveRecord::Base.timestamped_migrations
      "%.14d" % (current_migration_number(dirname) + 1)
    else
      "%.3d" % (current_migration_number(dirname) + 1)
    end
  end

  def create_migration_file
    Dir.glob(File.join(self.class.source_root, '*.rb')).each do |f|
      f.gsub!(/^.*\//, '')
      migration_template f, "db/migrate/#{f.gsub(/^\d*_/, '')}"
    end
  end
end
