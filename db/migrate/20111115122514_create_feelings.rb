class CreateFeelings < ActiveRecord::Migration
  def self.up
    create_table :feelings do |t|
      t.integer :feeling_definition_id
      t.integer :ammount
      t.integer :creature_id
      t.datetime :last_changed

      t.timestamps
    end
  end

  def self.down
    drop_table :feelings
  end
end
