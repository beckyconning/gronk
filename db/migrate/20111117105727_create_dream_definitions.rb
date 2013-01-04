class CreateDreamDefinitions < ActiveRecord::Migration
  def self.up
    create_table :dream_definitions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :dream_definitions
  end
end
