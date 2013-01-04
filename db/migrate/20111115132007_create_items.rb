class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :item_definition_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
