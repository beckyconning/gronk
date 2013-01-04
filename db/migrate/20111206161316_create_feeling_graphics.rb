class CreateFeelingGraphics < ActiveRecord::Migration
  def self.up
    create_table :feeling_graphics do |t|
      t.integer :creature_definition_id
      t.integer :feeling_definition_id

      t.timestamps
    end
  end

  def self.down
    drop_table :feeling_graphics
  end
end
