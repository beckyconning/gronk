class CreateActionDefinitions < ActiveRecord::Migration
  def self.up
    create_table :action_definitions do |t|
      t.string :name
      t.boolean :ends_phase
      t.boolean :gives_random_item
      t.integer :parent_action_id

      t.timestamps
    end
  end

  def self.down
    drop_table :action_definitions
  end
end
