class CreateCreatureDefinitions < ActiveRecord::Migration
  def self.up
    create_table :creature_definitions do |t|
      t.string :name
      t.integer :sleepy_phase_id

      t.timestamps
    end
  end

  def self.down
    drop_table :creature_definitions
  end
end
