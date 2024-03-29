class CreatePhaseDefinitions < ActiveRecord::Migration
  def self.up
    create_table :phase_definitions do |t|
      t.string :name
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :phase_definitions
  end
end
