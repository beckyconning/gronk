class CreateActionGraphics < ActiveRecord::Migration
  def self.up
    create_table :action_graphics do |t|
      t.integer :action_definition_id
      t.integer :creature_definition_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :action_graphics
  end
end
