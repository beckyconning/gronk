class CreateItemDefinitions < ActiveRecord::Migration
  def self.up
    create_table :item_definitions do |t|
      t.string :name
      t.integer :action_definition_id

      t.timestamps
    end
  end

  def self.down
    drop_table :item_definitions
  end
end
