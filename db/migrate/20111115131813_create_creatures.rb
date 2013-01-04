class CreateCreatures < ActiveRecord::Migration
  def self.up
    create_table :creatures do |t|
      t.integer :person_id
      t.string :name
      t.integer :creature_definition_id
      t.integer :dream_points

      t.timestamps
    end
  end

  def self.down
    drop_table :creatures
  end
end
