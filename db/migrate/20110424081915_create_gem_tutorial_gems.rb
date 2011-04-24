class CreateGemTutorialGems < ActiveRecord::Migration
  def self.up
    create_table :gem_tutorial_gems do |t|
      t.string :name
      t.string :description
      t.string :version

      t.timestamps
    end
  end

  def self.down
    drop_table :gem_tutorial_gems
  end
end
