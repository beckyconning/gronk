class CreateDreams < ActiveRecord::Migration
  def self.up
    create_table :dreams do |t|
      t.integer :dream_definition_id
      t.integer :creature_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dreams
  end
end
