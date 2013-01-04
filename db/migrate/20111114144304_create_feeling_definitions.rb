class CreateFeelingDefinitions < ActiveRecord::Migration
  def self.up
    create_table :feeling_definitions do |t|
      t.string :name
      t.string :description
      t.integer :priority
      t.boolean :hidden
      t.boolean :expressed_daily
      t.integer :starting_value
      t.integer :daily_increase
      t.integer :only_in_phase_id

      t.timestamps
    end
  end

  def self.down
    drop_table :feeling_definitions
  end
end
